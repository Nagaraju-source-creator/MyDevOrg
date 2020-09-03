global class LeadBatch implements Database.Batchable<sObject>
{
 global Database.QueryLocator start(Database.BatchableContext bc)
 {
return Database.getQueryLocator('select id,Name,Email,Phone,DND__c from Lead where DND__c = true ');    
 }   
global void execute(Database.BatchableContext bc,List<Lead> scope)
{
    List<DND__c> Dnd = new List<DND__c>();
    for(Lead l: scope)
    {
     DND__c D = new DND__c();
       D.Name = l.Name;
       D.phone__c = l.Phone;
        D.Email__c = l.Email;
       Dnd.add(D);
}

    insert Dnd;
    delete scope;
}    
    global void finish(Database.BatchableContext BC) {
     messaging.singleEmailMessage mail = new messaging.singleEmailMessage();
 AsyncApexJob a = [SELECT Id, Status,NumberOfErrors,JobItemsProcessed,TotalJobItems,CompletedDate, ExtendedStatus, ApexClass.name,  CreatedBy.Email,
CreatedBy.Name FROM AsyncApexJob WHERE Id =:BC.getJobId()];
mail.ToAddresses = new string[]{ a.CreatedBy.Email};
// mail.setReplyTo('');   // <-----------------------------------Set the ReplyTo---
mail.setSubject('Batch Code Complete -- '+a.ApexClass.name);
mail.setUseSignature(false);

string td1='"border:1px solid green; width=200px;"';
string td2='"width=200px; border:1px solid green; background-color:red; color:white; font-weight:bold;"';
string tdHead='"border:1px solid green; width=200px; color:white; background-color:green; font-weight:bold;"';
string ExtendedStatus='';
if(a.ExtendedStatus!=null)
    ExtendedStatus=a.ExtendedStatus;
string tdErrors=td1;
if(a.NumberOfErrors>0)
    tdErrors=td2;
string htmlBody = '<div style="border:2px solid green; border-radius:15px;"><p>Hi,</p><p><span style="color:brown; font-weight:bolder;">Salesforce</span> completed running <b>Apex Batch Code<>/b>.</p>'
+'<p>Results:</p>'
+'<center><table style="border:3px solid green; border-collapse:collapse;">'
+'<tr><td style='+tdHead+'>Class Name</td><td style='+tdHead+'>'+a.ApexClass.name+'</td></tr>'
+'<tr><td style='+td1+'>Completed Date</td><td style='+td1+'>'+a.CompletedDate+'</td></tr>'
+'<tr><td style='+td1+'>Status</td><td style='+td1+'>'+a.Status+'</td></tr>'
+'<tr><td style='+td1+'>Job Items Processed</td><td style='+td1+'>'+a.JobItemsProcessed+' / '+a.TotalJobItems+'</td></tr>'
+'<tr><td style='+td1+'>NumberOfErrors</td><td style='+tdErrors+'>'+a.NumberOfErrors+'</td></tr>'
+'<tr><td style='+td1+'>Extended Status</td><td style='+td1+'>'+ExtendedStatus+'</td></tr>'
+'<tr><td style='+tdHead+'>Created By</td><td style='+tdHead+'>'+a.CreatedBy.Name+' ('+a.CreatedBy.Email+')</td></tr>'
+'</table></center>'
+'<p>Enjoy the <b>results</b>!</p><p><span style="font-family:"Courier New", Courier, monospace; color:green; font-weight:bold; font-size:larger;">Scott</span></p></div>';

mail.setHtmlBody(htmlBody);
List<Messaging.SingleEmailMessage> mails = new List<Messaging.SingleEmailMessage>();
mails.add(mail);
Messaging.sendEmail(mails);

}
}
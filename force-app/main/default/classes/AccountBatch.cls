global class AccountBatch implements Database.Batchable<sObject>
{
 global Database.QueryLocator start(Database.BatchableContext bc)
 {
return Database.getQueryLocator('select id,Name from Account limit 1' );    
 }   
global void execute(Database.BatchableContext bc,List<Account> scope)
{
    List<Account> Acc = new List<Account>();
    //for(Account a: scope)
    {
    // a.Name = a.Name+'kumar';
     // Acc.add(a);
    }

    update Acc;
}
    global void finish(Database.BatchableContext bc)
    {
      list<id> contactids = new list<id>();  
      list<Contact> Cd = new list<Contact>([select id,Name,Email from Contact where Createddate = today ]);
        for(Contact C:Cd){
            contactids.add(C.id);
        }
    AsyncApexJob job=[SELECT Id, Status, NumberOfErrors, JobItemsProcessed, TotalJobItems, CreatedBy.Email FROM AsyncApexJob WHERE Id = :bc.getJobId()];
        Messaging.MassEmailMessage msg= new Messaging.MassEmailMessage();
         msg.setTargetObjectIds(contactids);
         msg.setTemplateID('00X2v0000023qYb');
        msg.setReplyTo('testemail@4-vahxu9i5vabijemy8xtjb8njjhkx8k8k3bhko4zyq4gw97yz3.2v-2gooveas.ap15.apex.salesforce.com');
Messaging.SendEmailResult [] M = Messaging.sendEmail(new Messaging.MassEmailMessage[]{msg});     
 }  
}
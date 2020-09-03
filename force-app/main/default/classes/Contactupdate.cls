global class Contactupdate implements Database.Batchable<sObject> {

    global Database.QueryLocator start(Database.BatchableContext bc)
 {
return Database.getQueryLocator('select id,Phone,Account.phone from Contact');    
 }   
global void execute(Database.BatchableContext bc,List<Contact> scope)
{
    List<Contact> con = new List<Contact>();
    for(Contact c: scope)
    {
    c.Phone = c.Account.phone;
      con.add(c);
    }

    update con;
}
    
     global void finish(Database.BatchableContext BC) {
     
 }  
    }
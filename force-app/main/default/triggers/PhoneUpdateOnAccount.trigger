trigger PhoneUpdateOnAccount on Account (after update) {
list<string> ac = new list<string>();
    for(account a :trigger.old)
    {
       ac.add(a.Phone);
    }
    system.debug('ac'+ac);
    list<string> an = new list<string>();
    for(account a :trigger.new)
    {
       an.add(a.Phone);
    }
    system.debug('an'+an);
if(ac != an)
{
 list<account> newacc = new list<account>();  
  list<account> act = [select id,name,Phone from account];
    for(account at :act)
    {
      
        at.StatusofPhone__c = 'Updated';
        newacc.add(at);
    }
    update newacc;
}    
}
trigger Statuschange on Account ( before update) {
    list<Dnd__c> Dl = new list<Dnd__c>();
    
  
    
    for(Account acc:trigger.new)
    {   
      // if (acc.status__c.equals('Inprogess')  == trigger.oldMap.get(acc.Id).status__c.equals('completed') )
if(Trigger.oldmap.get(acc.id).status__c.equals('Inprogess') == Trigger.newmap.get(acc.id).status__c.equals('completed') 
          && Trigger.newmap.get(acc.id).status__c == 'completed') {

       {
       DND__c D = new DND__c ();
       D.Name = acc.Name;
       D.phone__c = acc.Phone;
       Dl.add(D);
        }
{}
insert Dl;
    }
}
}
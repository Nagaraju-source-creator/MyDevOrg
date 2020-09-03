trigger SalesRep on Account (before insert) {
set<id> accids = new set<id>();
    for(Account a : trigger.new)
    {
        accids.add(a.Ownerid);
    }
    Map<Id,User>User_map = new Map<Id,User>([select Name from User where id in:accids]);
    for(Account ac :trigger.new)
    {
         User usr=User_map.get(ac.Ownerid);
        ac.Sales_Rep__c = usr.Name;
        
    }
}
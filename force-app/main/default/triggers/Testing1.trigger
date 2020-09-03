trigger Testing1 on Account (before insert,before update) 
    {
        set<id> accids = new set<id>();
        for(account ac :trigger.new)
        {
            accids.add(ac.OwnerId);
        }
        Map<Id,User>User_map = new Map<Id,User>([select Name from User where id in:accids]);

 for(Account Acc: Trigger.new)

 {

 User usr=User_map.get(Acc.OwnerId);

 Acc.sales_Rep__c=usr.Name;

 }

 }
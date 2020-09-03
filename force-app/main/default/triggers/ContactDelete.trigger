trigger ContactDelete on Account (before delete) {
     Set<id> accids = new Set<id>();  
    for(Account acc : Trigger.old)  
    {  
        accids.add(acc.id);  
    }  
     list<account> a = new list<account> ([select id,(select id from contacts) from Account where id in :accids ]);
for(account acct :a)
    
{
          acct.addError('Account has Related contacts');

}
        
    }
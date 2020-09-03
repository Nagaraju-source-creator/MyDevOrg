trigger ClosedOpportunityTrigger on Opportunity (after insert,after update) {
    //list<opportunity> opp = [select id,name,StageName from opportunity where id in :trigger.new];
     list<task> tt = new list<task>();
    for(Opportunity op : trigger.new){
        if(op.StageName == 'Closed Won'){
       task t = new task();
        t.Whatid = op.Id;
         t.Subject = 'Follow Up Test Task';
          tt.add(t); 
        }
        
    }
insert tt;
}
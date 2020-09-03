trigger AccountRelatedContact on Account (after update) {
 set<id> accsids = new set<id>();
    for(Account acc : trigger.new){
      accsids.add(acc.id);
    }
    if(!accsids.isEmpty()){

        BatchforContactsUpdate objBatch = new BatchforContactsUpdate();
        Database.executebatch(objBatch,200);
    }
}
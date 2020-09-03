trigger TiggerforfutureMethod on Account (after update) {
  set<id> accsids = new set<id>();
    for(Account acc : trigger.new){
      accsids.add(acc.id);
        //FutureClass.futureclassmethod(acc.id); 
        }
    if(!accsids.isEmpty())
        FutureClass.futureclassmethod(accsids);
}
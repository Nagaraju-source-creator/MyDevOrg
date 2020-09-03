trigger Accounts on Account (before update) {
    if(trigger.isBefore){
        if(trigger.isupdate){
            set<id>setOwnerId = new set<id>();
            map<Id,User>mapUserIdWiseUser = new map<Id,User>();
            for(Account oAcc:trigger.old){
                setOwnerId.add(oAcc.OwnerId); 
            system.debug('setOwnerId'+setOwnerId);    
            }
            if(setOwnerId.size()>0){
                for(User oUser:[Select Id,Name From User Where Id In:setOwnerId]){
                    mapUserIdWiseUser.put(oUser.Id,oUser);
                    system.debug('mapUserIdWiseUser'+mapUserIdWiseUser);
                }
                 set<id>setOwnerId1 = new set<id>();
            map<Id,User>mapUserIdWiseUser1 = new map<Id,User>();
            for(Account oAcc1:trigger.new){
                setOwnerId1.add(oAcc1.OwnerId); 
            system.debug('setOwnerId1'+setOwnerId1);    
            }
            if(setOwnerId1.size()>0){
                for(User oUser:[Select Id,Name From User Where Id In:setOwnerId1]){
                    mapUserIdWiseUser1.put(oUser.Id,oUser);
                    system.debug('mapUserIdWiseUser1'+mapUserIdWiseUser1);
                }
                    for(Account acc:trigger.new){
                        if(mapUserIdWiseUser.containsKey(acc.OwnerId)){
                            acc.Oldowner__c = mapUserIdWiseUser.get(acc.OwnerId).Name;
                        }
                    }
                }
            }
        }
    }
}
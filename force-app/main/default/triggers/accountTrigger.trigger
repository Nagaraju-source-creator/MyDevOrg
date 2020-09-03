trigger accountTrigger on Account(before update){

	Map<id, id> accountOwner = new Map<id, id>();
	for( Account ac: trigger.new ){
		if(ac.ownerid !=  trigger.oldMap.get(ac.id).ownerid){
			accountOwner.put(ac.id, trigger.oldMap.get(ac.id).ownerid);
		}
	}
Map<id,string> username = new Map<id, string>();
	for(User us:[select id, name from user where id IN:accountOwner.keyset()]){
		username.put(us.id, us.Name);
	}
	
	for( Account ac: trigger.new ){
		if(ac.ownerid !=  trigger.oldMap.get(ac.id).ownerid){
			ac.oldowner__c = username.get(accountOwner.get(ac.id));
		}
	}
	
}
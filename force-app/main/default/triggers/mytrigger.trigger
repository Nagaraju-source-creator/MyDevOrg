trigger mytrigger on Account (before insert, before update,before delete ,
                              after insert, after update, after delete,after undelete) {

    
       system.debug('Trigger.New'+Trigger.new);
       system.debug('Trigger.old'+Trigger.old);
        system.debug('Trigger.Newmap'+Trigger.newmap);
        system.debug('Trigger.oldmap'+Trigger.oldmap);
       
   
        system.debug('After Events');
      system.debug('Trigger.New'+Trigger.new);
        system.debug('Trigger.old'+Trigger.old);
        system.debug('Trigger.Newmap'+Trigger.newmap);
        system.debug('Trigger.oldmap'+Trigger.oldmap);  
    
    
}
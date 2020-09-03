trigger SimpleIntrests on customer__c (before insert,before update) {
   for(customer__c c : trigger.new) 
   {
     SimpleIntrest cl = new SimpleIntrest();
       c.TIntrest__c = cl.calculateIntrest(c.Principal__c,c.Intrest__c,c.TimePeriod__c);
           
   }      

}
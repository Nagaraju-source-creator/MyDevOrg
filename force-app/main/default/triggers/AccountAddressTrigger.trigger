trigger AccountAddressTrigger on Account (before insert,before update) {
    if(trigger.isbefore && trigger.isinsert){
      for(Account a :trigger.new){
      if(a.Match_Billing_Address__c==true&&a.BillingPostalCode!=null)
   {
      a.ShippingPostalCode=a.BillingPostalCode;
      system.debug('BillingPostalCode' +a.BillingPostalCode);
       }    
    
     
    
        }
    }
}
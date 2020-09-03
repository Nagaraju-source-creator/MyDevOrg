global class TriggerExample {
    global static void calculateTax(customer__c[] cust )
    
    {
        for(customer__c c:cust)
    {
     if(c.Ammount__c > 500000)
     {
         	c.Tax__c = string.valueOf(c.Ammount__c * 0.10); 
     }   
      else
      {
       c.Tax__c = string.valueOf(c.Ammount__c * 0.50); 
      }
    
    }
}

 global static void CreateTransaction(customer__c [] cust )
{
 list<Transactions__c>TR = new  list<Transactions__c>();
     for(customer__c c:cust)
    {
      Transactions__c t = new Transactions__c(Name = c.Name,Ammount__c = c.Ammount__c); 
        TR.add(t);
  
    }

insert TR;
}
}
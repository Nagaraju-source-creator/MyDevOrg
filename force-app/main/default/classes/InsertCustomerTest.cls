@istest
public class InsertCustomerTest {
static Testmethod void testcustomer()
{
    customer__c x = new customer__c();
    x.Name = 'cust1';
    x.Ammount__c = 1000;
    x.phone__c = '9502774360';
    insert x;
    
    Transactions__c t = new Transactions__c();
    t.Name = x.Name;
    t.Ammount__c = x.Ammount__c;
    t.phone__c = x.phone__c;
    insert t;
  system.assertEquals(t.Name, x.Name);
  system.assertEquals(t.Ammount__c, x.Ammount__c); 
   x.Name = 'cust11';
   x.Ammount__c = 30000;
    update x;
    
    
    
    
}
}
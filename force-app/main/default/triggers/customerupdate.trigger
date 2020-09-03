trigger customerupdate on customer__c (before update) {
    list<Transactions__c> Tl = new list<Transactions__c>();
    for(customer__c C:trigger.old)
    {
      Transactions__c t = new Transactions__c();
       t.Name = C.Name;
        t.phone__c = C.phone__c;
        t.Ammount__c = C.Ammount__c;
        Tl.add(t);
    }
insert Tl;
}
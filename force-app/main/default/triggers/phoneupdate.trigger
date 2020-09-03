trigger phoneupdate on Contact (after insert) {
    list<Account> acc = new list<Account>();
    for(Contact c:trigger.New)
    {
  Account a = [select id,Phone from Account where id =:c.Accountid] ;
        a.Phone = c.Phone;
        acc.add(a);
        
    }
    update acc;
}
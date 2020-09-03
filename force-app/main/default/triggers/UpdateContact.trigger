trigger UpdateContact on Account (before update) {
map<id,Account> acc = trigger.newmap;
    
    list <contact> cc = new list<Contact>();
    list<Contact> cn = [select id,name, accountid from Contact where accountid in : acc.keyset()];
    for(contact c : cn)
    {
         c.Phone = acc.get(c.accountid).Phone;
        cc.add(c);
    }
}
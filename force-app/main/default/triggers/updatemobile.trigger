trigger updatemobile on contact (after insert,after update)
{
    list<account> acc = new list<account>();
    list<contact> cn = trigger.new;
       account an = [select id,phone from account where id =:cn[0].AccountId];
    for(contact c :cn)
    {
        
        an.phone = c.phone;
        acc.add(an);
        
    }
    update acc;
    
}
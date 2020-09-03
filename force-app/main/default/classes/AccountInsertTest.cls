@isTest
public class AccountInsertTest {
public static testmethod void testdeletion()
{
    string myname = 'sam';
    Account a = new Account(Name = myname);
    Contact con = new Contact(lastname = 'sam');
    insert con;
    Contact c=[select id,name from Contact where Name = :myname limit 1];
    if(c != null )
    {
        system.assertEquals(c.name, a.name);
        delete c;
    }
insert a;
}
}
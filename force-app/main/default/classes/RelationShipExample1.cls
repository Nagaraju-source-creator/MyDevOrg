public class RelationShipExample1 {
    public list<Account> acc{get;set;}
    public pagereference show()
    {
        acc=[select name,industry,(select name,Email from Contacts) from Account];
        return null;
    }

}
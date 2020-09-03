public class RelationShipExample {
    public list<Contact> cont{get;set;}
    public pagereference show()
    {
        cont=[select id,name,Account.name,Account.industry from Contact limit 5];
        return null;
    }


}
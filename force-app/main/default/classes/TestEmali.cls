public class TestEmali {
    private final list<id> Contactids;
    public list<Contact> con;
    public TestEmali(apexpages.StandardController controller){
        con=[select id,name from Contact where createddate=today];
        for(integer i=0;i<3;i++)
        {
            Contactids.add(con[i].id);
           
        }
    }
    public void sendemail(){
        Messaging.MassEmailMessage mail = new Messaging.MassEmailMessage();
        mail.setTargetObjectIds(Contactids);
        Messaging.sendEmail(new Messaging.MassEmailMessage[] {mail});
    }
}
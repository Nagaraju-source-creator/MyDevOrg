public class Sample1 {
 public List<Account> acct {get;set;}
    public Sample1()
    {
        acct = [SELECT Name, (SELECT Name, Email FROM Contacts) FROM Account  where CreatedDate=today limit 5];
    }    
}
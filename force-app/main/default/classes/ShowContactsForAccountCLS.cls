public class ShowContactsForAccountCLS {
 Private Id accID;
 public List<Contact> contactList{get;set;}
 public ShowContactsForAccountCLS(){
   contactList = new List<Contact>();
   accID=  ApexPages.currentPage().getParameters().get('acId');
   contactList =  [SELECT FirstName,LastName,Email,Phone FROM Contact WHERE AccountID = : accID];
 }
}
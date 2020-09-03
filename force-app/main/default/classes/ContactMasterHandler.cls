public class ContactMasterHandler {
public void createContactRelationshipByContact(list<Contact>ListOfContacts)
{
  list<Contact_Relationship__c> cnlist = new list<Contact_Relationship__c>();
      for(Contact C :ListOfContacts)
      {
      if(C.ContactRelationship__c == true)
  {
      Contact_Relationship__c cn = new Contact_Relationship__c();
      cn.Name = C.LastName;
      cn.Contact__c = C.Id; 
      cnlist.add(cn);
  }
}
insert cnlist;
  
}
 }
public class ShowContacts {

    public list<Contact> showcontacts {get;set;} 
        public ShowContacts ()
    {
        showcontacts = ([select id,Name,Phone from Contact limit 10]);
    }

   
        }
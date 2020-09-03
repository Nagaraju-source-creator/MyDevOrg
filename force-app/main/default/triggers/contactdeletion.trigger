trigger contactdeletion on Account (before insert) {
    list<string> mynames = new list<string> ();
    for(Account a :trigger.new)
    {
        mynames.add(a.Name);
        
    }
  list<Contact> ct = [select id,name from Contact where name in:mynames]; 
      delete ct;
    
}
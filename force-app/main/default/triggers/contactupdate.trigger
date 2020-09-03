trigger contactupdate on Account (after update,after delete) {
if(trigger.isafter && trigger.isUpdate)
{
    map<Id,Account> mymap = Trigger.newmap;
    list<contact> con = [select id,Phone,accountid from Contact where accountid in :mymap.keyset()];
  for(Contact c:con)
  {
      c.Phone = mymap.get(c.accountid).Phone;
      con.add(c);
  }
  update con;
    
} 
 if(trigger.isAfter && trigger.isDelete)
 {
  map<id,Account> deletelist = trigger.oldMap;
list<Contact> mycontact = [select id,accountid from Contact where accountid IN :deletelist.keyset()];
     delete mycontact;
    }
    
}
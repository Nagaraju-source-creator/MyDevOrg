trigger duplicateleads on Lead (before insert) {
 for(Lead E:trigger.new)
   {
     if(E.Email != null) 
     {
         list<Lead> dupes = [select id from Lead where Email = :E.Email];
      
     if(dupes != null && dupes.size()>0){
           string errormessage = 'Lead is Already Exits';
         E.addError(errormessage);
       }   
     }
   }
}
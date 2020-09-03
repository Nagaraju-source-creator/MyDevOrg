trigger FindDupeEmp on employee__c (before insert,before update) {
   for(employee__c E:trigger.new)
   {
     if(E.Email__c != null) 
     {
         list<Department__c> dupes = [select id,Email__c from Department__c where Email__c = :E.Email__c ];
      
     if(dupes != null && dupes.size()>0){
           string errormessage = 'Duplicate Employee found';
         E.addError(errormessage);
       }   
     }
   }
}
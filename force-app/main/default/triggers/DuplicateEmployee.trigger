trigger DuplicateEmployee on Department__c (before insert) {
   for(Department__c D:trigger.new)
   {
     if(D.Email__c != null) 
     {
         list<employee__c> dupes = [select id,Email__c from employee__c where Email__c = :D.Email__c ];
      
     if(dupes != null && dupes.size()>0){
           string errormessage = 'Duplicate Employee found';
         D.addError(errormessage);
       }   
     }
   }
}
trigger BCCI on TeamMember__c (before insert) 
{
list<string> male = new list<string> (); 
list<string> female = new list<string> ();   
    for (TeamMember__c T:trigger.new)
    {
     if (T.male__c == true)
     {
         T.Name = 'Mr.'+T.Name;
     male.add(T.Name);
         
     }
     else if(T.female__c == true)
     {
         T.Name = 'Ms.'+T.Name;
        female.add(T.Name);
     }
 
    }
        
   }
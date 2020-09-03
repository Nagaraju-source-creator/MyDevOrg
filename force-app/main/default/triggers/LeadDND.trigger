trigger LeadDND on Lead (before insert,before update) {
    list<DND__c> DL = new list<DND__c>();
    for(Lead L:trigger.new)
    {   
      DND__c D = new DND__c ();
   if(L.DND__c == true)
   {
       D.Name = L.Name;
       D.phone__c = L.Phone;
       DL.add(D);
        }    
}     
insert DL;
    
}
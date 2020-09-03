trigger ContactRelationships on Contact (before insert) {

    list<Contact_Relationships__c> crs = new list<Contact_Relationships__c>();
    for(contact c: trigger.new)
    {
        if(c.Contact_Relationship__c == true)
        {
            Contact_Relationships__c cr = new Contact_Relationships__c();
            
            cr.name = c.lastname;
            crs.add(cr);
            
        }
    insert crs;
    
    
    }
    
    

}
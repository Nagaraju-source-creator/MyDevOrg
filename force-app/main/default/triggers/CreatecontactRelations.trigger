trigger CreatecontactRelations on Contact (after insert) {
    if(trigger.isafter)
{
  if(trigger.isInsert)
     {
       ContactMasterHandler CL = new ContactMasterHandler();
         CL.createContactRelationshipByContact(trigger.new);
        }  
}
}
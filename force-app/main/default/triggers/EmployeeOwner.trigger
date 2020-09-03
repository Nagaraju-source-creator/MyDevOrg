trigger EmployeeOwner on Emplyoee__c (before insert,before update) {
for (Emplyoee__c E :trigger.new )
{
    if(E.status__c == 'Qualified')
    {
     E.Ownerid = '00G2v00000529cH';
         }
}
}
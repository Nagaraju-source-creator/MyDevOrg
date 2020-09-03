trigger employeeinsert on Emplyoee__c (before insert) {
  for (Emplyoee__c e:Trigger.new)
    {
      List<Emplyoee__c> mynew = [select id,Name From Emplyoee__c ];
        if(mynew.size()>0)
        {
            e.Name.addError('Employee with Name is existing');
        }
    }  

}
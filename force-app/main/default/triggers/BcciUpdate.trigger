trigger BcciUpdate on TeamMember__c (before insert) {
       for (TeamMember__c T:Trigger.new)
    {
      List<TeamMember__c> mynew = [select id,Name From TeamMember__c where name =:T.Name ];
        if(mynew.size()>0)
        {
            T.Name.addError('Account with Name is existing');
        }
    }

}
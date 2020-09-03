trigger LeadUpdate on Lead (before insert) {
       for (Lead L:Trigger.new)
    {
      List<Lead> mynew = [select id,Name,Email From Lead ];
        if(mynew.size()>0)
        {
            L.Email.addError('Account with Email is existing');
        }
    }

}
trigger InsertAccount on Account (before insert) {
       for (Account a:Trigger.new)
    {
      List<Account> mynew = [select id,Name From Account where Name =:a.Name];
        if(mynew.size()>0)
        {
            a.Name.addError('Account with name is existing');
        }
    }

}
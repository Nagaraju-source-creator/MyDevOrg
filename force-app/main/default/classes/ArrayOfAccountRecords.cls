public class ArrayOfAccountRecords {
    public Account[] myval{set;get;}
public ArrayOfAccountRecords ()
{
  Account a1 = new Account(Name ='Naga', Industry = 'Banking');    
   Account a2 = new Account(Name ='Ravi', Industry = 'Banking'); 
  Account a3 = new Account(Name ='Ram', Industry = 'Banking');  
    myval = new Account[]{a1,a2,a3};
}
}
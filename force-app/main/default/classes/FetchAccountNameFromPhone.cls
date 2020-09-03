Public class FetchAccountNameFromPhone
{

Public Set<String> FetchAccName(String p) {  
    Set<String> s1= new Set<String>();
    List<Account> acc= new List<Account>([Select id,Name From Account where Phone = 'p']); 
    for(Account a:acc)
{
String s =a.name;
    s1.add(s);
}

System.debug('S1=' +s1); 
    return s1;	

}
}
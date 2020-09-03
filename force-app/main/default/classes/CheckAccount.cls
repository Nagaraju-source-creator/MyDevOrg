@RestResource(urlMapping='/showAccount/*')
global class CheckAccount {
@HttpGet
    global static list<Account> getAccount()
    {
     RestResponse res=RestContext.response;
     RestRequest req=RestContext.request;
        string accountId = req.requestURI.substring(req.requestURI.lastindexOf('/')+1);
        system.debug('accountId'+accountId);
list<Account> result = [select id,Name,Phone from Account where id=:accountId];
        return result;
    }
@HttpPost
    global static string doPost( string name, string phone)
    {
        Account acc = New Account();
        acc.Name=name;
        acc.Phone=phone;	
        insert acc;
        return acc.id;
        
    }
	}
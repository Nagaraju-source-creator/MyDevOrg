@istest
public class TestPhoneUpdate {

    static testmethod void mytest(){
       account an = new account ();
        an.Name = 'test';
        insert an;
        
        list<account> acc = new list<account>();
        for(account a : [select id,phone,StatusofPhone__c from account]){
            a.Phone = '482308230832';
            acc.add(a);
            
        }
        update acc;
        
        
        
        
        
    }
}
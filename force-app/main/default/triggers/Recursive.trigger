trigger Recursive on Account (after insert,after update) {
if(TriggerVar.flag != true)
{    
    if(trigger.isbefore && trigger.isInsert)
    
    {
    TriggerVar.flag = true;
    Account acc = [select id,Name from Account where Name = 'vijay' limit 1];
    acc.Name = 'y.vijay'; 
    update acc;
    
}
    if(trigger.isafter && trigger.isUpdate)
    {
        TriggerVar.flag = true;
        Account a = new Account (Name = 'satish');
            insert a;
    }
    
}
}
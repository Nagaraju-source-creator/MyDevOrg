trigger customerupdates on customer__c (before insert,before delete) {
if(Trigger.isBefore && trigger.IsInsert)
{
    TriggerExample.calculateTax(trigger.new);
        
} 
    else
    {
        if(trigger.isBefore && trigger.IsDelete)
        {
            TriggerExample.CreateTransaction(Trigger.old);
        }
    }
}
public class apex_example {
@AuraEnabled
    public static List<Camping_Item__c> getItems(){
        return [select id,Name,Price__c,Quantity__c from Camping_Item__c];
    }
    @AuraEnabled
    public static Camping_Item__c saveItem(Camping_Item__c item){
      insert item;
        return item;
        
    }
}
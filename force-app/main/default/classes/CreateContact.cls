public class CreateContact {
    public static void insertcontact(list<account> acc,map<id,account>acc1)  
    {
      set<String> fieldSet = new Set<String>(); 
for(Schema.FieldSetMember fields :Schema.SObjectType.Account.fieldSets.getMap().get('MyFieldSet').getFields()){
    fieldSet.add(fields.getFieldPath());
}
for(account a: acc){
    set<String> changedFieldSet  = new Set<String>();
    for(string s: fieldSet){
        if(a.get(s) != acc1.get(a.Id).get(s)){
            changedFieldSet.add(s);
        }
    }
    if(changedFieldSet.size()>0){
        //do something
    }
}
    }
}
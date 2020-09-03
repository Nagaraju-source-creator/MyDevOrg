public class ListSelect {
    public string myval{get;set;}
    public list<selectOption> myoptions;
    public list<selectoption> getmyoptions()
    {
        return myoptions;
        
    }
    public listSelect()
    {
        myoptions = new list<selectoption>();
        selectoption s = new selectoption('null','-None-');
         selectoption s1 = new selectoption('one','Jan');
    myoptions.add(s);
    myoptions.add(s1);
        myoptions.add(new selectoption('two','Feb'));
       myoptions.add(new selectoption('three','Mar'));

        
        
        
    
    }
}
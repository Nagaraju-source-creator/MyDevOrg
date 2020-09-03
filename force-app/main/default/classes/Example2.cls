public class Example2 {
    public integer avalue {get;set;}
    public integer bvalue {get;set;}
        public integer result {get;set;}
        public string operation {get;set;}
public pageReference add()
{
    result = avalue+bvalue;
    operation = 'Addition';
    return null;
    }
   
public pageReference sub()
{
    result = avalue-bvalue;
    operation = 'subtraction';
    return null;
    
}
}
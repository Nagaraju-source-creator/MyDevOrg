public class ListMapController {
    public map<string,string> inputfields{get;set;}
    public ListMapController()
    {
        inputfields=new map<string,string>{'firstname'=>'jony','lastname'=>'sony','age'=>'10'};
            
    }
    public pagereference submitfielddata(){
        dosomethingintrestingwithInput();
        return null;
    }
    public void dosomethingintrestingwithInput()
    {
        inputfields.put('age', (Integer.valueOf(inputfields.get('age'))+10).format());
    }

}
public class SelectExample {
    public selectoption[] myoptions{set;get;}
public SelectExample()
{
selectoption op1 = new selectoption('null','-None-');
selectoption op2 = new selectoption('one','Jan');
selectoption op3 = new selectoption('Two','Feb');
    myoptions = new selectoption[]{op1,op1,op3};
        }
}
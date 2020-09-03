public class IncomeTax {
    public Decimal tax{set;get;}
    public decimal calculateTax(Decimal ammount )
    {
     if(ammount > 500000)
     {
         	tax = ammount * 0.10; 
     }   
      else
      {
       tax = ammount * 0.05;    
      }
    return tax ;
    
    }
}
public class ChartingExample {
public list<PieWedgeData> getPieData()
{
 list<PieWedgeData> data=new list<PieWedgeData>();   
data.add(new PieWedgeData('Jan',30));    
 data.add(new PieWedgeData('Feb',12)); 
 data.add(new PieWedgeData('Mar',15)); 
    data.add(new PieWedgeData('Apr',23)); 
    data.add(new PieWedgeData('May',18));
    return data;
}
 public class PieWedgeData
 {
     public String name {get;set;}   
     public Integer data {get;set;}  
 public PieWedgeData(string name,Integer data)
 {
     this.name = name;
     this.data = data;
 }
 
 }
    
    
    }
public class VisualforceCodeController {
    public boolean showCodeSection {get;set;}
    public string PageText {get;set;}
    public String CurrentPageName {get;set;}
public VisualforceCodeController()
{
 CurrentPageName= 'DisplayCode';   
 showCodeSection = false;   
    
}
public PageReference DisplayCode()
{
   if(CurrentPageName !='DisplayCode') 
   {
  PageText = UtilClass.VFPageCode(CurrentPageName);    
   showCodesection=true;    
       
       
   }  
return null;   

}  
    }
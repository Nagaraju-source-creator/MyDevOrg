public class UtilClass {
public static string VFPageCode(string PageName)
{
 ApexPage testPage = New ApexPage();   
 string PageText = 'Hi' ;   
 if(PageName !='DisplayCode')   
 {
     testPage = [select id,Markup from ApexPage where name=:PageName];   
   PageText=testPage.markup;  
   }
  return PageText;   
 }
 }
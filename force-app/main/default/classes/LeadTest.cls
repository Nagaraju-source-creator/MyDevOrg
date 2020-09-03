@isTest 
public class LeadTest {
    static testMethod void testMethod1() 
    {
        List<Lead> lstLead= new List<Lead>();
        for(Integer i=0 ;i<5;i++)
        {
            Lead ls = new Lead();
            ls.LastName ='Name'+i;
            ls.Company = 'India';
            ls.DND__c = true;
            lstLead.add(ls);
        }
        
        insert lstLead;
        
        Test.startTest();

            LeadBatch obj = new LeadBatch();
            DataBase.executeBatch(obj); 
            
        Test.stopTest();
    }
}
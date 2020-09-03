public class OwnerChangeButton {
    @AuraEnabled    
    public static Opportunity changeOwnerMethod(Id oppId) {       
        list<User> u = new list<user>([select id,name from User where Name = 'QueueUser' ]);
        if(oppId != null) {            
            Opportunity opp = [SELECT Id, Name, OwnerId FROM Opportunity WHERE Id = :oppId];
         
      opp.OwnerId = u[0].id ; 
            //update opportunity Ownerid with loggedin userid.           
            update opp;        
            return opp;      
        }     
        return null;    
    }
}
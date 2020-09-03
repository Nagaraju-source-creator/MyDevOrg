public with sharing class DeferenceDemoController {
 public list<Opportunity> optlist {get;set;}
  public list<Lead> leadlist {get;set;}
    public list<Contact> Conlist {get;set;}
    public list<Account> acclist {get;set;}
   
    public DeferenceDemoController()
    {
    }
        public void sosldemo_method()
        {
          optlist = new list<Opportunity>();
          leadlist = new list<Lead>();
            conlist = new list<Contact>();
            acclist = new list<Account>();
  list<list<Sobject>> searchlist = [FIND 'test' IN ALL FIELDS RETURNING Account(Name,Phone), 
                                    Contact(Name,Phone), Opportunity(id,name), Lead(Name,Phone)];
            
    acclist = ((list<Account>)searchlist[0]);  
            conlist = ((list<Contact>)searchlist[1]); 
            optlist = ((list<Opportunity>)searchlist[2]);
            leadlist = ((list<Lead>)searchlist[3]);  
              
           }
            
    }
trigger updateContactPhone on Account (before update,after delete) {
    
    if(trigger.isbefore && trigger.isupdate)
    {
        
       map<id,account> acmap = trigger.newmap;
        list<contact> lsc = new list<contact>();
        list<contact> cons = [select id, phone,accountid from contact where accountid in: acmap.keySet()];
        for(contact c: cons){
            c.phone = acmap.get(c.accountid).phone;
        lsc.add(c);
        }
        update lsc;
        
    }
        
        
        
        
        
        
    }
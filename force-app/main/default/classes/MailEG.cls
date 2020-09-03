public class MailEG {
    public pagereference show()
    {
        Messaging.SingleEmailMessage msg = new Messaging.SingleEmailMessage();
        string[] toaddress = new string[]{'nnag290@gmail.com'};
            msg.setToAddresses(toaddress);
        msg.setSubject('test');
        msg.setPlainTextBody('hai ram');
        msg.setHtmlBody('<h1> this is the link for registration</h1>');
        Messaging.sendEmail(new Messaging.SingleEmailMessage[] {msg});
        return null;
    }

}
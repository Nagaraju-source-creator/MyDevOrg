global class CreateAccountEmailServiceExample implements Messaging.InboundEmailHandler {
  global Messaging.InboundEmailResult handleInboundEmail(Messaging.inboundEmail email,Messaging.InboundEnvelope envelop){
		Messaging.InboundEmailResult result = new Messaging.InboundEmailResult();
      system.debug('email'+email);
       system.debug('envelop'+envelop);
      
		String connmae = email.fromName;
		String condes = email.plainTextBody;
		String conIndus = email.Subject;
		Contact cc = new Contact(LastName = connmae, description = condes, Title = conIndus);
		insert cc;
            //Save any Binary Attachment
           list<Contact> cl = new list<Contact>([select id,Name from Contact where CreatedDate = today ]);
           list<id> cid = new list<id>();
      for(Contact c : cl){
          cid.add(c.id);
      }
      
      for (Messaging.Inboundemail.BinaryAttachment bAttachment : email.binaryAttachments) {
            Attachment attachment = new Attachment();
            attachment.Name = bAttachment.fileName;
            attachment.Body = bAttachment.body;
            attachment.ParentId = '0032v00003JyM9j';
            insert attachment;
            }
return null;
     
	} 
}
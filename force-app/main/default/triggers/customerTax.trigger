trigger customerTax on customer__c (before insert,before update) {
for(customer__c c:trigger.new)
{
    IncomeTax IT = new IncomeTax();
    c.Tax__c = string.valueOf(IT.calculateTax(c.Ammount__c));
}
}
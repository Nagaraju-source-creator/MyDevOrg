trigger Testing2 on Account (before delete) {
for(account acc: trigger.old)
{
    acc.adderror('Do Not Delete');
}
}
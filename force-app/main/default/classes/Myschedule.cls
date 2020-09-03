global class Myschedule implements system.Schedulable 
{
global void execute(system.SchedulableContext sc)
{
   AccountBatch cu = new  AccountBatch();
    Database.executeBatch(cu);
}
}
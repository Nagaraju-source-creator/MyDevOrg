global class TestSchedule {
    {
        
        string timeframe = '0 15 9 21 11 ? 2019 ';
         Myschedule m = new Myschedule();
        system.Schedule('myjob','timeframe',m);
    }
}
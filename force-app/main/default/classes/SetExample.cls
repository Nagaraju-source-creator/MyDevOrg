public class SetExample {
    public set<string> Name{get;set;}
    public setExample()
    {
        Name = new set<string>();
        Name.add('one');
        Name.add('nag');
        Name.add('raj');
        Name.add('ram');
    }
}
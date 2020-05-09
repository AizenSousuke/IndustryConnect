// Declares a delegate named Action
public delegate void Action();

public class TestDelegate
{
    // Create a method for the delegate
    public void DoSomeAction1()
    {
        System.Console.WriteLine("Hello");
    }

    public void Test()
    {
        // Instantiate the delegate
        Action doSomeActionDelegate = DoSomeAction1;

        // Call the delegate
        doSomeActionDelegate();
    }
}

TestDelegate test = new TestDelegate();
test.Test();
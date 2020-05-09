using System;

public class DelegateClass
{
    // Declare Delegate
    public delegate void Delegate(string text);

    // Function
    public void DelegateAction(string text)
    {
        System.Console.WriteLine(text);
    }
}

class AnotherClass : DelegateClass
{
    public void Main()
    {
        // Instantiate delegate and link the function to it
        Delegate Delegate = DelegateAction;
        // Call the delegate
        Delegate("Hello");
    }
}

AnotherClass obj = new AnotherClass();
// Run the main function
obj.Main();
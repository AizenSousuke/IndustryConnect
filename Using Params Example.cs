public void usingParams(params int[] values)
{
    System.Console.WriteLine(values.Length);
}

public void main()
{
    usingParams(1, 2, 3, 4, 5);
}

main();
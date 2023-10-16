// See https://aka.ms/new-console-template for more information

using dotnet_part;

try
{
    var sanitizedInput = new InputSanitizer().ParseToInt(args);
    var operations = new NumberOperations();
    Console.WriteLine(operations.FirstOperation(sanitizedInput));
    Console.WriteLine(operations.SecondOperation(sanitizedInput));
    Console.WriteLine(operations.ThirdOperation(sanitizedInput));
}
catch (Exception e)
{
    Console.WriteLine(e);
}
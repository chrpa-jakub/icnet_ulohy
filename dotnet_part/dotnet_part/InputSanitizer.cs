namespace dotnet_part;

public class InputSanitizer
{
   public List<int> ParseToInt(string[] args)
   {
       if (args.Length != 3)
           throw new Exception("Args count is not 3.");

       return args.ToList().ConvertAll(int.Parse);
   }
}
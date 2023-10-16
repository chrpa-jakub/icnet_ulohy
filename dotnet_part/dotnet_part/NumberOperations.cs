namespace dotnet_part;

public class NumberOperations
{
   public int FirstOperation(List<int> numbers)
   {
       return numbers.Sum();
   }

   public int SecondOperation(List<int> numbers)
   {
       var toReturn = numbers.First();
       numbers.Take(1..).ToList().ForEach(n => toReturn *= n);
       return toReturn;
   }

   public double ThirdOperation(List<int> numbers)
   {
       if (numbers.Last().Equals(0))
           throw new DivideByZeroException();
       
       return (double)numbers.Take(..^1).Sum() / numbers.Last();
   }
}
public class fib {
  static long fibonacci(int n) {
    return (n <= 1) ? n : fibonacci(n - 1) + fibonacci(n - 2);
  }

  public static void main(String[] args) {
    try {
      int sequences = Integer.parseInt(args[0]);
      long start = System.currentTimeMillis();
      long output = fib.fibonacci(sequences);
      long finish = System.currentTimeMillis();
      long elapsed = (finish - start);
      System.out.printf("Java Fib: %dx\nResult: %d | Time: %dms\n", sequences, output, elapsed);
    } catch (Exception e) {
      System.out.println(e);
    }
  }
}
public class fibtail {
  static long fibonacci(int n, long a, long b) {
    if (n == 0) return a;
    if (n == 1) return b;
    return fibonacci(n - 1, b, a + b);
  }

  public static void main(String[] args) {
    try {
      int sequences = Integer.parseInt(args[0]);
      System.out.printf("Java Fib: %dx\n", sequences);
      long start = System.currentTimeMillis();
      long output = fibtail.fibonacci(sequences, 0, 1);
      long finish = System.currentTimeMillis();
      long elapsed = (finish - start);
      System.out.printf("Result: %d | Time: %dms\n", output, elapsed);
    } catch (Exception e) {
      System.out.println(e);
    }
  }
}
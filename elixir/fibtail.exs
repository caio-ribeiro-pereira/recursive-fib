defmodule Fib do
  def fibonacci(n, a, b) do
    cond do
      n == 0 ->
        a
      n == 1 ->
        b
      true ->
        fibonacci(n - 1, b, a + b)
    end
  end
end

try do
  [arg1] = System.argv
  sequences = String.to_integer(arg1)
  IO.puts "Elixir Fib: #{sequences}x"
  start = :os.system_time(:millisecond)
  output = Fib.fibonacci(sequences, 0, 1)
  finish = :os.system_time(:millisecond)
  elapsed = (finish - start)
  IO.puts "Result: #{output} | Time: #{elapsed}ms"
rescue
  e -> IO.puts e
end

defmodule Fib do
  def fibonacci(n) when n <= 1 do
    n
  end

  def fibonacci(n) do
    fibonacci(n - 1) + fibonacci(n - 2)
  end
end

try do
  [arg1] = System.argv
  sequences = String.to_integer(arg1)
  IO.puts "Elixir Fib: #{sequences}x"
  start = :os.system_time(:millisecond)
  output = Fib.fibonacci(sequences)
  finish = :os.system_time(:millisecond)
  elapsed = (finish - start)
  IO.puts "Result: #{output} | Time: #{elapsed}ms"
rescue
  e -> IO.puts e
end

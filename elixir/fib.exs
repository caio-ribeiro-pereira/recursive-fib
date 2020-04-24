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
  start = :os.system_time(:millisecond)
  output = Fib.fibonacci(sequences)
  finish = :os.system_time(:millisecond)
  elapsed = (finish - start)
  IO.puts "[Elixir]\nFib: #{sequences}x | Result: #{output} | Time: #{elapsed}ms"
rescue
  _ -> IO.puts "[Elixir] Invalid argument"
end

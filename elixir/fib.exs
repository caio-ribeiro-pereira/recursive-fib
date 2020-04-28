defmodule Fib do
  def fibonacci(n) do
    cond do
      n <= 1 ->
        n
      true ->
        fibonacci(n - 1) + fibonacci(n - 2)
    end
  end
end

try do
  [arg1] = System.argv
  sequences = String.to_integer(arg1)
  start = :os.system_time(:millisecond)
  output = Fib.fibonacci(sequences)
  finish = :os.system_time(:millisecond)
  elapsed = (finish - start)
  IO.puts "Elixir Fib: #{sequences}x\nResult: #{output} | Time: #{elapsed}ms"
rescue
  e -> IO.puts e
end

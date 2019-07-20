puts "Crystal Recursive Fib Benchmark..."

def fibonacci(n)
  return n if n <= 1
  return (fibonacci(n - 1) + fibonacci(n - 2)).to_i64
end

begin
  sequences = ARGV[0].to_i
  puts "Calculating fib #{sequences}x..."
  output = 0
  elapsed = Time.measure do
    output = fibonacci(sequences)
  end
  puts "Result: #{output}\nTime elapsed: #{elapsed.total_milliseconds.round(3)}ms"
rescue
  puts "Invalid argument"
end

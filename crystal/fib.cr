def fibonacci(n)
  return n if n <= 1
  return (fibonacci(n - 1) + fibonacci(n - 2)).to_i64
end

begin
  sequences = ARGV[0].to_i
  output = 0
  elapsed = Time.measure do
    output = fibonacci(sequences)
  end
  puts "Crystal Fib: #{sequences}x\nResult: #{output} | Time: #{elapsed.total_milliseconds.to_i}ms"
rescue e
  puts e
end

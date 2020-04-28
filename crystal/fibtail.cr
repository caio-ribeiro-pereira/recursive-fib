def fibonacci(n, a, b)
  return a if n == 0
  return b if n == 1
  return (fibonacci(n - 1, b.to_u64, (a + b).to_u64)).to_u64
end

begin
  sequences = ARGV[0].to_u64
  output = 0
  elapsed = Time.measure do
    output = fibonacci(sequences, 0, 1)
  end
  puts "Crystal Fib: #{sequences}x\nResult: #{output} | Time: #{elapsed.total_milliseconds.to_i}ms"
rescue e
  puts e
end

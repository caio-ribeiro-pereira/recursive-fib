def fibonacci(n, a, b)
  return a if n == 0
  return b if n == 1
  return fibonacci(n - 1, b, a + b)
end

begin
  sequences = ARGV[0].to_i
  puts "Ruby Fib: #{sequences}x"
  start = Process.clock_gettime(Process::CLOCK_MONOTONIC)
  output = fibonacci(sequences, 0, 1)
  finish = Process.clock_gettime(Process::CLOCK_MONOTONIC)
  elapsed = (finish - start) * 1000
  puts "Result: #{output} | Time: #{elapsed.to_i}ms"
rescue Exception => e
  puts e
end
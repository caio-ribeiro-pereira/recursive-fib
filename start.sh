#!/bin/bash
echo "Recursive Fibonnaci Multilang Benchmark"
read -p "Enter a sequence: " sequence
echo "=================================="
gcc ./c/fib.c -o ./c/fib && ./c/fib $sequence &
crystal ./crystal/fib.cr $sequence &
go run ./golang/fib.go $sequence &
node ./nodejs/fib.js $sequence &
python ./python/fib.py $sequence &
ruby ./ruby/fib.rb $sequence &
wait
echo "=================================="
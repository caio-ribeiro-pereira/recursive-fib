#!/bin/bash
echo "Recursive Fibonnaci Multilang Benchmark"
read -p "Enter a sequence: " sequence
echo "=================================="
gcc ./c/fib.c -o ./c/fib && ./c/fib $sequence
echo "=================================="
sleep 1
crystal ./crystal/fib.cr $sequence
echo "=================================="
sleep 1
go run ./golang/fib.go $sequence
echo "=================================="
sleep 1
node ./nodejs/fib.js $sequence
echo "=================================="
sleep 1
python ./python/fib.py $sequence
echo "=================================="
sleep 1
ruby ./ruby/fib.rb $sequence
echo "=================================="
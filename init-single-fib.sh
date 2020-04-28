#!/bin/bash
echo "Fibonnaci Recursive Multilang Benchmark"
read -p "Type sequence: " sequence
echo "============================================================"
echo "Compiled langs:"
echo ""
gcc-8 ./clang/fib.c -o ./clang/fib && ./clang/fib $sequence
echo "---"
crystal ./crystal/fib.cr $sequence
echo "---"
go run ./golang/fib.go $sequence
echo "---"
javac java/fib.java && java -cp ./java: fib $sequence
echo "---"
rustc ./rust/fib.rs -o ./rust/fib && ./rust/fib $sequence
echo ""
echo "============================================================"
echo "Interpreted langs:"
echo ""
elixir ./elixir/fib.exs $sequence
echo "---"
node ./nodejs/fib.js $sequence
echo "---"
php ./php/fib.php $sequence
echo "---"
python3 ./python/fib.py $sequence
echo "---"
ruby ./ruby/fib.rb $sequence
echo "============================================================"
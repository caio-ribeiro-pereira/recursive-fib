#!/bin/bash
echo "Recursive Fibonnaci Multilang Benchmark"
read -p "Enter a sequence: " sequence
echo "============================================================"
gcc ./clang/fib.c -o ./clang/fib && ./clang/fib $sequence
crystal ./crystal/fib.cr $sequence
elixir ./elixir/fib.exs $sequence
go run ./golang/fib.go $sequence
javac java/fib.java; cd java/; java fib $sequence; cd ..
node ./nodejs/fib.js $sequence
php ./php/fib.php $sequence
python ./python/fib.py $sequence
ruby ./ruby/fib.rb $sequence
rustc ./rust/fib.rs -o ./rust/fib && ./rust/fib $sequence
echo "============================================================"
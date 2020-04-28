#!/bin/bash
echo "Fibonnaci Recursive Multilang Benchmark"
read -p "Type sequence: " sequence
echo "============================================================"
echo "Parallel execution"
gcc-8 ./clang/fib.c -o ./clang/fib
javac java/fib.java
rustc ./rust/fib.rs -o ./rust/fib
java -cp ./java: fib $sequence &
./rust/fib $sequence &
./clang/fib $sequence &
crystal ./crystal/fib.cr $sequence &
go run ./golang/fib.go $sequence &
elixir ./elixir/fib.exs $sequence &
node ./nodejs/fib.js $sequence &
php ./php/fib.php $sequence &
python3 ./python/fib.py $sequence &
ruby ./ruby/fib.rb $sequence &
wait
echo "============================================================"
#!/bin/bash
echo "Fibonnaci Multilang Benchmark"
read -p "Enter a sequence: " sequence
echo "Fibonnaci Tail Recursive"
echo "============================================================"
gcc ./clang/fibtail.c -o ./clang/fibtail && ./clang/fibtail $sequence
crystal --release ./crystal/fibtail.cr $sequence
elixir ./elixir/fibtail.exs $sequence
go run ./golang/fibtail.go $sequence
javac java/fibtail.java; cd java/; java fibtail $sequence; cd ..
node ./nodejs/fibtail.js $sequence
php ./php/fibtail.php $sequence
python ./python/fibtail.py $sequence
ruby ./ruby/fibtail.rb $sequence
rustc ./rust/fibtail.rs -o ./rust/fibtail && ./rust/fibtail $sequence
echo "============================================================"
echo "Fibonnaci Recursive"
echo "============================================================"
gcc ./clang/fib.c -o ./clang/fib && ./clang/fib $sequence
crystal --release ./crystal/fib.cr $sequence
elixir ./elixir/fib.exs $sequence
go run ./golang/fib.go $sequence
javac java/fib.java; cd java/; java fib $sequence; cd ..
node ./nodejs/fib.js $sequence
php ./php/fib.php $sequence
python ./python/fib.py $sequence
ruby ./ruby/fib.rb $sequence
rustc ./rust/fib.rs -o ./rust/fib && ./rust/fib $sequence
echo "============================================================"
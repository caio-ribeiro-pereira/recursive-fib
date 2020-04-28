#!/bin/bash
echo "Fibonnaci Tail Recursive Multilang Benchmark"
read -p "Type sequence: " sequence
echo "============================================================"
echo "Parallel execution"
gcc-8 ./clang/fibtail.c -o ./clang/fibtail
javac java/fibtail.java
rustc ./rust/fibtail.rs -o ./rust/fibtail
java -cp ./java: fibtail $sequence &
./rust/fibtail $sequence &
./clang/fibtail $sequence &
crystal ./crystal/fibtail.cr $sequence &
go run ./golang/fibtail.go $sequence &
elixir ./elixir/fibtail.exs $sequence &
node ./nodejs/fibtail.js $sequence &
php ./php/fibtail.php $sequence &
python3 ./python/fibtail.py $sequence &
ruby ./ruby/fibtail.rb $sequence &
wait
echo "============================================================"
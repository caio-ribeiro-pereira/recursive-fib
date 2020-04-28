#!/bin/bash
echo "Fibonnaci Tail Recursive Multilang Benchmark"
read -p "Type sequence: " sequence
echo "============================================================"
echo "Compiled langs:"
echo ""
gcc-8 ./clang/fibtail.c -o ./clang/fibtail && ./clang/fibtail $sequence
echo "---"
crystal ./crystal/fibtail.cr $sequence
echo "---"
go run ./golang/fibtail.go $sequence
echo "---"
javac java/fibtail.java && java -cp ./java: fibtail $sequence
echo "---"
rustc ./rust/fibtail.rs -o ./rust/fibtail && ./rust/fibtail $sequence
echo ""
echo "============================================================"
echo "Interpreted langs:"
echo ""
elixir ./elixir/fibtail.exs $sequence
echo "---"
node ./nodejs/fibtail.js $sequence
echo "---"
php ./php/fibtail.php $sequence
echo "---"
python3 ./python/fibtail.py $sequence
echo "---"
ruby ./ruby/fibtail.rb $sequence
echo "============================================================"
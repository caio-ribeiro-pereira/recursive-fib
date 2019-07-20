package main

import (
	"fmt"
	"time"
	"strconv"
	"os"
)

func Fibonacci(n uint64) uint64 {
	if n <= 1 {
		return n
	}
	return Fibonacci(n - 1) + Fibonacci(n - 2)
}

func main() {
	sequences, err := strconv.ParseUint(os.Args[1], 10, 64)
	if err != nil {
		fmt.Printf("[Go] Invalid argument\n")
	} else {
		start := time.Now()
		output := Fibonacci(sequences)
		elapsed := time.Since(start)
		fmt.Printf("[Go] Fib: %dx | Result: %d | Time: %.0fms\n", sequences, output, (elapsed.Seconds() * 1000))
	}
}
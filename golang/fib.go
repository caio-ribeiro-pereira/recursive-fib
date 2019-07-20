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
	fmt.Print("Golang Recursive Fib Benchmark...\n")
	sequences, err := strconv.ParseUint(os.Args[1], 10, 64)
	if err != nil {
		fmt.Println("Invalid argument")
	} else {
		fmt.Printf("Calculating fib %dx...\n", sequences)
		start := time.Now()
		output := Fibonacci(sequences)
		elapsed := time.Since(start)
		fmt.Printf("Result: %d\nTime elapsed: %.3fms\n", output, (elapsed.Seconds() * 1000))
	}
}
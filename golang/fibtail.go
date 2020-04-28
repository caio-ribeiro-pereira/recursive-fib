package main

import (
	"fmt"
	"time"
	"strconv"
	"os"
)

func Fibonacci(n uint64, a uint64, b uint64) uint64 {
	if n == 0 {
		return a
	}
	if n == 1 {
		return b
	}
	return Fibonacci(n - 1, b, a + b)
}

func main() {
	sequences, err := strconv.ParseUint(os.Args[1], 10, 64)
	if err != nil {
		fmt.Println(err)
	} else {
		start := time.Now()
		output := Fibonacci(sequences, 0, 1)
		elapsed := time.Since(start)
		fmt.Printf("Golang Fib: %dx\nResult: %d | Time: %.0fms\n", sequences, output, (elapsed.Seconds() * 1000))
	}
}
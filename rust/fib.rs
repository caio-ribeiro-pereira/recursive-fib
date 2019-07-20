use std::env;
use std::time::{Instant};

fn fibonnaci(n: u64) -> u64 {
  if n <= 1 {
    return n;
  }
  return fibonnaci(n - 1) + fibonnaci(n - 2);
}

fn main() {
  let args: Vec<String> = env::args().collect();
  let sequences: u64 = match args[1].parse() {
    Ok(n) => {
      n
    },
    Err(_) => {
      eprintln!("[Rust] Invalid arguments");
      return;
    },
  };
  let clock = Instant::now();
  let output = fibonnaci(sequences);
  let elapsed = clock.elapsed().as_millis();
  println!("[Rust] Fib {}x | Result: {} | Time: {}ms", sequences, output, elapsed);
}

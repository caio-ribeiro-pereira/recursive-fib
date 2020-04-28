use std::env;
use std::time::{Instant};

fn fibonnaci(n: u64, a: u64, b: u64) -> u64 {
  if n == 0 {
    return a;
  }
  if n == 1 {
    return b;
  }
  return fibonnaci(n - 1, b, a + b);
}

fn main() {
  let args: Vec<String> = env::args().collect();
  let sequences: u64 = match args[1].parse() {
    Ok(n) => {
      n
    },
    Err(e) => {
      eprintln!("{}", e);
      return;
    },
  };
  let clock = Instant::now();
  let output = fibonnaci(sequences, 0, 1);
  let elapsed = clock.elapsed().as_millis();
  println!("Rust Fib: {}x\nResult: {} | Time: {}ms", sequences, output, elapsed);
}

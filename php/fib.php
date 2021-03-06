<?php
function fibonacci($n) {
  return ($n <= 1) ? $n : (fibonacci($n - 1) + fibonacci($n - 2));
}

try {
  $sequences = intval($argv[1]);
  $start = hrtime(true);
  $output = fibonacci($sequences);
  $end = hrtime(true);
  $elapsed = intval(round(($end - $start) / 1000000));
  echo "PHP Fib: {$sequences}x\nResult: {$output} | Time: {$elapsed}ms\n";
} catch (Throwable $exception) {
  echo "{$exception}\n";
}
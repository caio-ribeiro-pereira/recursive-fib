<?php
function fibonacci($n, $a, $b) {
  if ($n == 0) return $a;
  if ($n == 1) return $b;
  return fibonacci($n - 1, $b, $a + $b);
}

try {
  $sequences = intval($argv[1]);
  $start = hrtime(true);
  $output = fibonacci($sequences, 0, 1);
  $end = hrtime(true);
  $elapsed = intval(round(($end - $start) / 1000000));
  echo "PHP Fib: {$sequences}x\nResult: {$output} | Time: {$elapsed}ms\n";
} catch (Throwable $exception) {
  echo "{$exception}\n";
}
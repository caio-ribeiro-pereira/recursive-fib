<?php

function fibonacci($n)
{
    if ($n <= 1) {
        return $n;
    }

    return fibonacci($n - 1) + fibonacci($n - 2);
}

try {
    $sequences = intval($argv[1]);
    $start = hrtime(true);
    $output = fibonacci($sequences);
    $end = hrtime(true);
    $elapsed = round(($end - $start) / 1000000);

    echo "[PHP]\nFib: {$sequences}x | Result: {$output} | Time: {$elapsed}ms";
} catch (Throwable $exception) {
    echo "[PHP] Error: {$exception->getMessage()}";
}
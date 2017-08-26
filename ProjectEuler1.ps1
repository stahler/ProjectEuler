# Project Euler
# Problem 1

1..999 | ForEach-Object -Begin {$sum=0} -Process {
    if ($PSItem % 3 -eq 0 -OR $PSItem % 5 -eq 0) {
        $sum+=$PSItem
    }
} -End {$sum}
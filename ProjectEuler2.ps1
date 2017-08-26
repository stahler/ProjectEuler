<#  Project Euler - Problem 2
    Each new term in the Fibonacci sequence is generated by adding the previous two terms.
    By starting with 1 and 2, the first 10 terms will be: 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...
    By considering the terms in the Fibonacci sequence whose values do not exceed four million,
    find the sum of the even-valued terms.
#>
function Get-Fib {
    param(
        [int]$num
    )
    $current = $previous = 1
    while ($current -lt $num) {
        if ($current % 2 -eq 0) {
            $sum = $sum + $current
        }

        $current, $previous = ($current + $previous), $current
    }
    $sum
}
Get-Fib 4000000


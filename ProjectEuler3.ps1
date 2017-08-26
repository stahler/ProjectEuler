<#  Project Euler - Problem 3
    The prime factors of 13195 are 5, 7, 13 and 29.
    What is the largest prime factor of the number 600851475143 ?
#>
function isPrime {
    param ($number)
    $isPrime = $true
    if ($number -lt 2) {
        $isPrime = $False
    }
    if ($number -gt 2 -and $number % 2 -eq 0) {
        $isPrime = $False
    }
    for ($i = 3; $i -le [math]::Sqrt($number); $i += 2) {
        if ($number % $i -eq 0) { $isPrime = $False}
    }
    $isPrime
}

$value = 600851475143
$sqrValue = [Math]::Sqrt($value)

for ($i = 3; $i -le $sqrValue; $i += 2) {
    if ($value % $i -eq 0 -and (isPrime $i)) {
        $maxPrime = $i
    }
}

$maxPrime

<#  Project Euler - Problem 5
    2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
    What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?
#>
function modFunction ($mod)
{
	$number = 1
	$start = $mod
	do {
		if($number%$mod -eq 0)
		{
			$mod--
		}
		else
		{
			$number++;
			$mod=$start
		}
	}
	until ($mod -eq 1)
	$number
}

modFunction 20
<#  Project Euler - Problem 4
    A palindromic number reads the same both ways.
    The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.
    Find the largest palindrome made from the product of two 3-digit numbers.?
#>
function Reverse-Integer
{
	param([string]$str)
    for ($i = $str.ToString().Length - 1; $i -ge 0; $i--)
    {
		$c = $c + ($str.ToString().Substring($i,1))
	}
    [int]$c
}

$big = 0
for($x=100;$x -le 999;$x++)
{
	for($y=100;$y -le 999;$y++)
    {
		$xy = $x*$y
        $yx = Reverse-Integer $xy
        if ($yx -eq $xy)
        {
			if ($xy -gt $big) {$big=$xy}
		}
	}
}
$big
#Some positive integers n have the property that the sum [ n + reverse(n) ] consists entirely of odd (decimal) digits. For instance, 36 + 63 = 99 and 409 + 904 = 1313.
#We will call such numbers reversible; so 36, 63, 409, and 904 are reversible. Leading zeroes are not allowed in either n or reverse(n).
#There are 120 reversible numbers below one-thousand.
#How many reversible numbers are there below one-billion (109)?

use Modern::Perl 2011;

my ($reverse, $sum, $count);

for my $number(1..99999999)
{
	$reverse = reverse($number);
	next if ($reverse =~ /^0/);
	$sum = $number + $reverse;

	$a = length($sum);

	if ($sum =~ /(1|3|5|7|9){$a}/) 
	{
		$count ++;
		say "$number and $sum  matches \n ";
	}
}

say "Total is $count";

#answer 608720
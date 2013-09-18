#2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
#What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

use Modern::Perl 2011;
my $result;my $number = 1;
while (1)
{
	$result = 0;
	for (1..20)
	{		unless ($number % $_ == 0)
		{
			$result = 1;
		}

	}	if ($result == 0)
	{
		say $number;
		last;	}

	$number ++;
}

#answer : 232792560
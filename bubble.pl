#!/usr/bin/perl

#Author: Daniel Kruze
#Title: bubble.pl
#Date 09-20-22

@userValues; # Create an empty array for holding scalars

#Expected input:[a, a+1, a+2...n] where n = 10 and a+1 !> a
#Expected output:[a, a+1, a+2...n] where n = 10 and a+1 >= a
sub BadSort { # simple bubble sort
	for ($i = 0; $i < 9; $i = $i + 1) { # loop 9 times
		for ($j = 0; $j < 9; $j = $j + 1) { # loop 9 times
			if ($userValues[$j] > $userValues[$j + 1]) { # If a value in the specified array is less than the value at the next index
				$x = $userValues[$j]; # let x be a value in the specified array
				$userValues[$j] = $userValues[$j + 1]; # the value in the specified array is now the value that is at the next index
				$userValues[$j + 1] = $x; # the value that was once at the next index is now set equal to the original value
			}
		}
	}
}

print "Please input integers until asked to stop:\n";
$continue = 1; # sentry for following while loop
while ($continue) { # whilesentry is true
	$userInput = <>; # let a scalar hold user input
	push(@userValues, "$userInput"); # add that scalar to the empty array
	if (@userValues == 10) { # if the array has 10 scalars in it
		$continue = 0; # end loop
	}
}
print "Unsorted List:\n";
chomp @userValues; # parse array of scalars into a string of 10 values
$" = ", "; # set a comma with a space as a delimiter between all 10 values
print "@userValues\n"; # print all 10 values
print "Sorted List:\n";
&BadSort; # call sorting subroutine
chomp @userValues;
$" = ", "; 
print "@userValues\n";

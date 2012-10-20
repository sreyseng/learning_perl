#!/usr/bin/perl

#prints the sum of the number from 1-1000
my @numberList = (1..3);

my $numberListTotal = &total(@numberList);
print "The total from Way#1 is : $numberListTotal.\n";

my $numberListTotal = &anotherTotal(@numberList, 4);
print "The toal from Way#2 is : $numberListTotal.\n";

#One way to do it (verbose)
sub total {
	my $sum = 0;
	foreach $number (@_) {
		$sum += $number;
	}
	return $sum;
}

#Another less verbose way
sub anotherTotal {
	my $sum = 0;
	foreach (@_) {
		$sum += $_;
	}
	return $sum;
}
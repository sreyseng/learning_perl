#!/usr/bin/perl
use 5.010;

#prints the total of a list of preset numbers

my @fred = qw(1 3 5 7 9);
my $fred_total = &total(@fred);

print "The total of \@fred is $fred_total.\n";

#prints the total of a list of numbers entered by the user
print "Enter some numbers on separate lines: \n";
my $user_total = total(<STDIN>);
print "The total of those numbers is $user_total.\n";

sub total{
	my $my_sum = 0;
	foreach $value (@_) {
		$my_sum += $value;
	}
	return $my_sum;
}

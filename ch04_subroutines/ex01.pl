#!/usr/bin/perl
use 5.010;

my @fred = qw(1 3 5 7 9);
my $fred_total = &total(@fred);

print "The total of \@fred is $fred_total.\n";

print "Enter some numbers on separate lines: \n";
my @user_total = &total(<STDIN>);
print "The total of those numbers is $user_total.\n";

sub total{
	state $my_sum = 0;
	foreach $value (@_) {
		$my_sum += $value;
	}
	return $my_sum;
}

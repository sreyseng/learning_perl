#!/usr/bin/perl

#Given a list of numbers, return a list of the numbers passed in that are above average

#Subroutine to determine the average

print ("Please enter in a list of number: \n");
my @numberList = <STDIN>;
my $ref = { "one"=> 1, "two111111"=> 2 };
chomp(@numberList);
my $calculatedAverage = &determineAverage($ref, 125, "abc");
#print ("The average of (@numberList) is $calculatedAverage.\n");

sub determineAverage {
	my @numberList = %{$_[0]};
	#my $name = $_[1];

	#print @_ . "\n";
	#print $numberList[1];
	print @%{$_[0]} . "\n";
	print $ref;
	print @numberList;
	#print @numberList;
	#print "@numberList" ."\n". $name . "\n";

	#print $_[0] . " " . $_[4] . " " . $_[3] . " " . $_[2] . " " . $_[1] . " ";
	# my $sum = 0;
	# foreach $number (@numberList) {
	# 	$sum += $number;
	# 	print "Current Sum: $sum, Current number is: $number";
	# }
	return $sum;
}
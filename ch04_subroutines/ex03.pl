#!/usr/bin/perl

print "Enter in numbers, one per line. CTRL+D for EOF: \n";
chomp(my @numbers = <STDIN>);

my @newNumbers = &aboveAverage(@numbers);
print "newNumbers list returned from function: @newNumbers\n";

#++++++++++++
# SUBROUTINES
#++++++++++++

sub average {
	my @tempNumbers = @_;
	my $tempCount = @tempNumbers;
	my $sum = 0;
	foreach $number (@tempNumbers) {
		$sum += $number;
	}
	return $sum / $tempCount;
}

sub aboveAverage {
	my @tempNumbers = @_;
	print "tempNumber list in function: @tempNumbers\n";
	my $tempAverage = &average(@tempNumbers);
	print "tempAverage in function: $tempAverage\n";
	my @tempNewList;

	foreach $number (@tempNumbers) {
		if ($number > $tempAverage) {
			push(@tempNewList, $number);
		}
		print "tempNewList list in function: @tempNewList\n";
	}
	return @tempNewList;
}
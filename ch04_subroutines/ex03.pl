#!/usr/bin/perl

print "Enter in numbers, one per line. CTRL+D for EOF: \n";
chomp(my @numbers = <STDIN>);

my $average = &average(\@numbers);
print "The average is: $average\n";

my @newNumbers = {&aboveAverage(\@numbers, $average)};
print @newNumbers;

#++++++++++++
# SUBROUTINES
#++++++++++++

sub average {
	my @tempNumbers = @{$_[0]};
	my $tempCount = @tempNumbers;
	my $sum = 0;
	foreach $number (@tempNumbers) {
		$sum += $number;
	}
	return $sum / $tempCount;
}

sub aboveAverage {
	my @tempNumbers = @{$_[0]};
	my $tempAverage = $_[1];
	my @tempNewList = [];

	foreach $number (@tempNumbers) {
		if ($number > $tempAverage) {
			push(@tempNewList, $number);
		}
	}
	print "INFUNCTION LIST : @{tempNewList}";
	print "RETURNLIST: @tempNewList";
	return \@tempNewList;
}
#!/usr/bin/perl

@names = qw(
	fred
	betty
	barney
	dino
	wilma
	pebbles
	bamm-bamm
);

print "Please enter in a number between 1 and 7, one number per line: \n";
chomp(@numbers = <STDIN>);

# #subtract 1 from number to normalize to 0-based index
foreach $number (@numbers) {
	$number = $number -1;
	print "@names[$number] ";
}

#Another way (less verbose)
foreach (@numbers) {
	print "@names[$_ -1] ";
}
#!/usr/bin/perl

print "Please enter a series of words, one per line: \n";
chomp(my @words = <STDIN>);

my %hash;

foreach $word (@words) {	
	if (exists $hash{$word}) {
		$hash{$word}++;
	} else {
		$hash{$word} = 1;
	}
}

print "\n";
print "***\n";
foreach $key (keys %hash) {
	print "$key => $hash{$key}\n";
}
print "***\n";
#!/usr/bin/perl

print "Please enter a list of strings, one per line: \n";

chomp(my @line = <STDIN>);

print "\n";
print "1234567890" x 3;
print "\n";

foreach $item (@line) {
	printf("%20s\n", "$item");
}

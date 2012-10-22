#!/usr/bin/perl

print "Please enter the column width: \n";
chomp(my $width = <STDIN>);
print "\n";

print "Please enter a list of strings, one per line: \n";
chomp(my @line = <STDIN>);
print "\n";

print "1234567890" x (($width+9)/10);

print("\n");

foreach (@line) {
	printf("%${width}s\n", "$_");
}

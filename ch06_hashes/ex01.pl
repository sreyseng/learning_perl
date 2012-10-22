#!/usr/bin/perl

my %hash = (
	fred	=> "flintstone",
	barney=> "rubble",
	wilma	=> "flintstone",
);

my $answer = "y";
while($answer eq "y") {
	print "Please enter a name: ";
	chomp(my $name = <STDIN>);
	if(exists $hash{$name}) {
		print "Your family name is: $hash{$name}.\n";
	} else {
		print "No family name found for $name!\n";
	}

	print "Continue? (y = yes): ";
	chomp($answer = <STDIN>);
}
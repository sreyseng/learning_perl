#!/usr/bin/perl
use 5.010;

&greet( "Fred" );
&greet( "Barney" );
&greet( "Wilma" );
&greet( "Betty" );

sub greet {
	state @name;
	$tempName = @_[0];

	if (@name) {
		print "Hi, $tempName. I've seen : @name.\n";
		push(@name, $tempName);
	} else {
		print "Hi, $tempName. You are the first one here!\n";
		push(@name, $tempName);
	}
}
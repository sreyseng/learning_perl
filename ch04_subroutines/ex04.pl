#!/usr/bin/perl
use 5.010;

&greet( "HiekFirst" );
&greet( "RoatSecond" );

sub greet {
	state $name;
	$tempName = @_[0];

	if (defined($name)) {
		print "Hi, $tempName. $name is also here!\n";
	} else {
		print "Hi, $tempName. You are the first one here!\n";
		$name = $tempName;
	}
}
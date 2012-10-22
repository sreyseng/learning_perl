#!/usr/bin/perl

my $max_length = 0;
foreach $key (keys %ENV) {
	if($max_length < length($key)) {
		$max_length = length($key);
	}
}

foreach $key (sort keys %ENV) {
	printf ("%${max_length}s => $ENV{$key}\n", $key);
}

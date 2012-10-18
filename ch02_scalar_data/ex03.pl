#!/usr/bin/perl

$twoPie = (2*3.14);


print "Please enter in a radius: ";
chomp($radius = <STDIN>);

if ($radius < 0) {
	$radius = 0;
}

$circumference = $twoPie * $radius;
print "The circumference is: $circumference";
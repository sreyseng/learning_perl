#!/usr/bin/perl

# Print the string as many times as the number indicated.

print "Please enter in a string: ";
chomp($string = <STDIN>);

print "Please enter in a number: ";
chomp($number = <STDIN>);

$stringXnumber = "$string \n" x $number;
print "Printing $string $number times: \n";
print $stringXnumber;
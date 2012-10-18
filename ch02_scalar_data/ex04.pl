#!/usr/bin/perl

print "Please enter a number: ";
chomp($numberOne = <STDIN>);

print "Please enter another number: ";
chomp($numberTwo = <STDIN>);

$product = $numberOne * $numberTwo;
print "The product of $numberOne and $numberTwo is: $product.\n";
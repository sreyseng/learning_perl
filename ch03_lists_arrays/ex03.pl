#!/usr/bin/perl

print "Please enter in a list of strings, one per line: \n";
chomp(@myList = <STDIN>);

@myList = sort(@myList);
print "@myList \n";
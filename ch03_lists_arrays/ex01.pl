#!/user/bin/perl

print "Please enter in items (to complete, press Ctrl + D): \n";
chomp(@array = <STDIN>);

@array = reverse(@array);
print "\n@array \n";
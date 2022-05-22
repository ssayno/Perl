#!/usr/bin/perl -w
use strict;
use warnings;
use feature "state";
our $name = "zgl";
sub one{
    $name = "zt";
    print "$name";
}
one();
print "$name";
print "\n", '-' x 40, "\n";
my @array =  qw/1 3 9 4/;
for my $item (@array){
    print $item, "|"
}
sub two{
    my $name = $name;
    $name = "shuaishuai";
    print $name, "hhhh\n";
    for my $item (@array){
        print $item, "|"
    }
}
# print $item;
print "\b\n";

print "\n", '-' x 40, "\n";
two();
print $name;
print "\b\n";
sub three{
    state $count = 0;
    $count++;
    print $count;
}
three();
three();
three();
three();
three();
print "\n", "$name", "\n";
sub four{
    five();
    local $name = "dashuaige";
    five();
    print $name, "\n";
}
sub five{
    print $name, "\n";
}
four();


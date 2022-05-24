#!/usr/bin/perl -w
use warnings;
use strict;
use Data::Dump qw(dump);
BEGIN{
    $,=" ";
}
print "Please input the height of pyramid: ";
my $number = <STDIN>;
chomp($number);
my @array;
foreach my $index (0 .. $number-1){
    foreach (0 .. $index){
        $array[$index][$number - $index - 1 + 2 * $_] = "*";
    }
}
foreach my $need (@array){
    foreach my $temp (@$need){
        if(defined $temp){
            print "*";
        }else{
            print " ";
        }
    }
    print "\n";
}

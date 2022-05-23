#!/usr/bin/perl -w
use warnings;
use strict;
use Data::Dump qw(dump);
open(FILE, "<:utf8", "nowcoder.txt") || die "Can't open this file";
my @array;
while(<FILE>){
    my @temp = split;
    my $lIndex = $#temp;
    for my $index (0 .. $lIndex){
        $array[$. - 1][$index] = $temp[$index];
    }
}
my $columns = $#{$array[0]};
for my $column (0 .. $columns){
    for my $row (0 .. $. - 1){
        print $array[$row][$column], " ";
    }
    print "\b\n";
}
close(FILE)

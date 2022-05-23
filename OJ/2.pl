#!/usr/bin/perl -w
use warnings;
use strict;
BEGIN{
    $\="";
}
open(FILE, "<:utf8", "nowcoder.txt") || die "Can't open this file";
my @array;
while(<FILE>){
    push(@array, $_);
}
for my $index (-5 .. -1){
    print $array[$index];
}
close(FILE)

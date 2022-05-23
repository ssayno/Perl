#!/usr/bin/perl -w
use warnings;
use strict;
BEGIN{
    $\="\n";
}
open(FILE, "<:utf8", "nowcoder.txt") || die "Can't open this file";
my $total;
while(<FILE>){
    my @array = split;
    $total += $array[5];
}
print $total;


close(FILE)

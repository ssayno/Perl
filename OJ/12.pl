#!/usr/bin/perl -w
use warnings;
use strict;
BEGIN{
    $\="\n";
}
open(HANDLE, "<:utf8", "nowcoder.txt") || die "Can't open this file";
my @array;
my $sum;
while(<HANDLE>){
    my $count = length(s/[0a-zA-Z6-9\n]//gr);
    $array[$.-1]=$count;
}
for my $index (0 .. $#array){
    print "line", $index+1, " number: $array[$index]";
    $sum += $array[$index];
}
print "sum is ", $sum;
close(HANDLE)

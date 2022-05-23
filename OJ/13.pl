#!/usr/bin/perl -w
use warnings;
use strict;
BEGIN{
    $\="";
}
open(HANDLE, "<:utf8", "nowcoder.txt") || die "Can't open this file";
my @array;
my $sum;
while(<HANDLE>){
    if($_ !~ /this/){
        print ;
    }
}
close(HANDLE)

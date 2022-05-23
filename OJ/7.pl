#!/usr/bin/perl -w
use warnings;
use strict;
BEGIN{
    $\="\n";
}
open(FILE, "<:utf8", "nowcoder.txt") || die "Can't open this file";
while(<FILE>){
    my @array = split(/ /, $_);
    for my $item (@array){
        if(length($item) < 8){
            print $item;
        }
    }
}

close(FILE)

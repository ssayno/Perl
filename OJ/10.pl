#!/usr/bin/perl -w
use warnings;
use strict;
BEGIN{
    $\="\n";
    $,=" ";
}
open(FILE, "<:utf8", "nowcoder.txt") || die "Can't open this file";
my %vocabulary;
while(<FILE>){
    my @array = split;
    $vocabulary{$array[1]}++;
}
for my $key (sort{$vocabulary{$a} <=> $vocabulary{$b}} keys %vocabulary){
    if($vocabulary{$key} > 1){
        print $vocabulary{$key}, $key;
    }
}
close(FILE)

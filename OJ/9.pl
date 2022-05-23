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
    for my $item (@array){
        $vocabulary{$item}++;
    }
}
for my $key (reverse sort{$vocabulary{$a} <=> $vocabulary{$b}} keys %vocabulary){
    print $key, $vocabulary{$key};
}

close(FILE)

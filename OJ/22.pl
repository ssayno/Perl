#!/usr/bin/perl -w
use warnings;
use strict;
use Data::Dump qw(dump);
BEGIN{
    $\="";
}
open(FILE, "<:utf8", "nowcoder.txt") || die "Can't open this file";
my %tt;
while(<FILE>){
    chomp($_);
    my @temp = split(/:/,$_);
    if(!defined $tt{$temp[0]}){
        $tt{$temp[0]} = [];
    }
    push(@{$tt{$temp[0]}}, $temp[1]);
}
for (sort{$a<=>$b} keys %tt){
    print "[$_]", "\n";
    for (@{$tt{$_}}){
        print $_, "\n";
    }
}
close(FILE)

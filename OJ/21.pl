#!/usr/bin/perl -w
use warnings;
use strict;
use Data::Dump qw(dump);
BEGIN{
    $\="";
}
open(FILE, "<:utf8", "nowcoder.txt") || die "Can't open this file";
while(<FILE>){
    chomp($_);
    my @temp = split(//, $_);
    my $length = scalar(@temp);
    foreach (1 .. $length / 3){
        my $index = -3 * $_;
        if($index != -$length){
            $temp[$index] = "," . $temp[$index];
        }
    }
    foreach (@temp){
        print ;
    }
    print "\n";
}
close(FILE)

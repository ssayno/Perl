#! /usr/bin/perl
BEGIN{
    $\="\n";
}
use warnings;
use strict;
open(HANDLE, "<:utf8", "nowcoder.txt") || die "Can't open this file";
while(<HANDLE>){
	my $flag = 1;
    my @temp = split("[.]", $_);
    if(scalar(@temp) != 4){
        print "error";
	last;
    }
    for my $item (@temp){
        if($item < 0 || $item > 255){
            print "no";
	    $flag = 0;
            last;
        }
    }
    print "yes" if $flag;
}


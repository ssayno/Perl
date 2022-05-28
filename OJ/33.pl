#!/usr/bin/perl
BEGIN{
    $\="\n";
}
use warnings;
no warnings 'experimental::smartmatch';

use strict;
use English;
use feature "switch";
open(HANDLE, "<:encoding(utf8)", "nowcoder.txt") or die "Can't open that file";
binmode(STDOUT, "utf8");

while(my $line = <HANDLE>){
    chomp($line);
    given($NR){
        when(/[13]/){
            my @temp = split(/:/, $line);
            print "serverVersion:", $temp[3];
        }
        when(4){
            my @temp = split(/[,:]/, $line);
            print "osName:", $temp[3];
            print "osVersion:", $temp[5];
        }
    }
}

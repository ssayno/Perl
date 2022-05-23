#!/usr/bin/perl -w
use warnings;
use strict;
BEGIN{
    $\="";
}
open(HANDLE, "<:utf8", "nowcoder.txt") || die "Can't open this file";
while(<HANDLE>){
    if($_ !~ /b|B/){
        print s/[\n]//gr, " ";
    }
}
print "\b\n";
close(HANDLE)

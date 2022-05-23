#!/usr/bin/perl -w
use warnings;
use strict;
open(HANDLE, "<:utf8", "nowcoder.txt") || die "Can't open this file";
while(<HANDLE>){
    my @temp = split(/:/, $_ =~ s/[\n]//gr);
    for my $index (0 .. $#temp){
        print $temp[-($index+1)], ($index < $#temp) ? ":" : "\n";
    }
}
close(HANDLE)

#!/usr/bin/perl -w
use warnings;
use strict;
BEGIN{
    $\="\n";
}
open(FILE, "<:utf8", "nowcoder.txt") || die "Can't open this file";
my $line = 0;
while(<FILE>){
    $line++;
}
print "$line";

close(FILE)

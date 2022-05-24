#!/usr/bin/perl -w
use warnings;
use strict;
BEGIN{
    $\="\n";
    $,=" ";
}
open(FILE, "<:utf8", "nowcoder.txt") || die "Can't open this file";
my %hash;
while(<FILE>){
    if(/^192\.168\.1\.22/){
        my @temp = split;
        $hash{$temp[6]}++;
    }
}
# print scalar(%hash);
for (reverse sort{$hash{$a}<=>$hash{$b}} keys %hash){
    print $hash{$_}, $_;
}
close(FILE)

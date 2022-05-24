#!/usr/bin/perl -w
use warnings;
use strict;
use feature "switch";
no warnings 'experimental::smartmatch';
BEGIN{
    $\="\n";
    $,=" ";
}
open(FILE, "<:utf8", "nowcoder.txt") || die "Can't open this file";
my %hash;
while(<FILE>){
    my @temp = split;
    given ($temp[5]) {

        when("ESTABLISHED"){
            $hash{"ESTABLISHED"}++;
        }
        when("TIME_WAIT"){
            $hash{"TIME_WAIT"}++;
        }
        when("LISTEN"){
            $hash{"LISTEN"}++;
        }
    }
}

for (reverse sort{$hash{$a}<=>$hash{$b}} keys %hash){
    print $hash{$_}, $_;
}
close(FILE)

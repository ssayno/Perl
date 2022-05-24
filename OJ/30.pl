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
    if($. == 1){
        next;
    }
    my @temp = split;
    my ($ip, $port) = split(/:/, $temp[4]);
    if($port =~ /3306/ && /ESTABLISHED/){
        $hash{$ip}++;
    }
}

for (reverse sort{$hash{$a}<=>$hash{$b}} keys %hash){
    print $hash{$_}, $_;
}
close(FILE)

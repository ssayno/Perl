#!/usr/bin/perl -w
use warnings;
use strict;
use English;
use Data::Dump qw(dump);
BEGIN{
    $\="\n";
    $,=" ";
}
open(FILE, "<:utf8", "nowcoder.txt") || die "Can't open this file";
my %hash;
while(<FILE>){
    if($N == 1){
        next;
    }
    my @temp = split;
    my ($ip, $port) = split(/:/, $temp[4]);
    if($port =~ /3306/ && /ESTABLISHED/){
        $hash{"IP"}{$ip}++;
        $hash{"ESTABLISHED"}++;
        $hash{"TOTAL_LINK"}++;
    }
}
my $TOTAL_IP = scalar(%{$hash{"IP"}});
print "TOTAL_IP", $TOTAL_IP;
print "ESTABLISHED", $hash{"ESTABLISHED"};
print "TOTAL_LINK", $hash{"TOTAL_LINK"};
dump %hash;
close(FILE)

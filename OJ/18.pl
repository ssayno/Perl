#!/usr/bin/perl -w
use warnings;
use strict;
BEGIN{
    $,=" ";
}
open(HANDLE, "<:utf8", "nowcoder.txt") || die "Can't open this file";
my %domain_count;
while(<HANDLE>){
    # my ($domain) = $_ =~ m/\/\/(.*?)\//;
    my $domain;
    if(m/\/\/(.*?)\//){
        $domain = $1;
    }
    $domain_count{$domain}++;
}
for my $key (sort{$domain_count{$a} <=> $domain_count{$b}} keys %domain_count){
    print $domain_count{$key}, $key;
    print "\n";
}
close(HANDLE)

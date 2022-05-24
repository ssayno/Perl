#!/usr/bin/perl -w
use warnings;
use strict;
BEGIN{
    $\="\n";
    $,=" ";
}
open(FILE, "<:utf8", "nowcoder.txt") || die "Can't open this file";
my $count;
while(<FILE>){
    if(/http:\/\/www\.baidu\.com\/search\/spider.html/ && /404/){
        $count++;
    }
}

for (reverse sort{$hash{$a}<=>$hash{$b}} keys %hash){
    print $hash{$_}, $_;
}
print $count;
close(FILE)

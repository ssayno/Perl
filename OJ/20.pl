#!/usr/bin/perl -w
use warnings;
use strict;
BEGIN{
    $\="";
}
open(FILE, "<:utf8", "nowcoder.txt") || die "Can't open this file";
while(<FILE>){
    if(/[0-9]{1}/ && $_ !~ /[0-9]{2,}/){
        print;
    }
}

close(FILE)

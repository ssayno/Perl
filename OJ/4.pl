#!/usr/bin/perl -w
use warnings;
use strict;
BEGIN{
    $\="\n";
}
open(FILE, "<:utf8", "nowcoder.txt") || die "Can't open this file";
while(<FILE>){
    if($. == 5){
        print;
    }
}

close(FILE)

#!/usr/bin/perl -w
use warnings;
use strict;
for my $item (0 .. 500){
    if($item % 7 == 0){
        printf("%d%s", $item, (500 - $item) < 7 ? "\n" : " ");

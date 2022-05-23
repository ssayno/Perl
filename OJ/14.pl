#!/usr/bin/perl -w
use warnings;
use strict;
BEGIN{
    $\="\n";
}
open(HANDLE, "<:utf8", "nowcoder.txt") || die "Can't open this file";
my $sum;
my $count;
while(<HANDLE>){
    my $temp = s/[\n]//gr;
    if($. == 1){
        $count = $temp;
    }else{
        $sum += $temp;
    }
}
printf("%.3f\n", $sum / $count);
close(HANDLE)

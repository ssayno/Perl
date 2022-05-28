#!/usr/bin/perl
BEGIN{
    $\="\n";
}
use warnings;
no warnings 'experimental::smartmatch';

use strict;
use English;
use feature "switch";
open(HANDLE, "<:encoding(utf8)", "nowcoder.txt") or die "Can't open that file";
binmode(STDOUT, "utf8");
<HANDLE>;
my $VSZ;
my $RSS;
while(<HANDLE>){
    chomp;
    my @temp = split;
    $VSZ += $temp[4];
    $RSS += $temp[5];
}
print "MEM\tTOTAL";
printf("VSZ_SUM:%.1fM,RSS_SUM:%.3fM\n", $VSZ / 1024, $RSS / 1024);


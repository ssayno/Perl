#! /usr/bin/perl -w
use v5.14;
open(GRAGES, "<:utf8", "grades");

binmode(STDOUT, ":utf8");

my %grades;

while(my $line = <GRAGES>){
    my ($student, $grade) = split(" ", $line);
    $grades{$student} .= $grade . " ";
}
for my $student (sort keys %grades) {
    my $score=0;
    my $total=0;
    my @scores = split(" ", $grades{$student});
    for my $grade (@scores){
        $score ++;
        $total += $grade;
    }
    print $student, "average is:", $total / $score, "\n";
}

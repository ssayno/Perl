#! /usr/bin/perl -w
use warnings;
use strict;
use Cwd qw(cwd chdir);

my $camels = "123";
print $camels, "\n";
print $camels + 1, "\n";
print $camels . "a", "\n";
my $array = [1, 2, 3, 5];
print @$array[0], "\n";
my $dog = "September";
print $camels, " ", $dog, "\n";
print "Perl 像 Python 那样交换数值\n";
($dog, $camels) = ($camels, $dog);
print $camels, " ", $dog, "\n";
my $camels = "123455";
print $camels, "\n";
my %weekday;
$weekday{"Sun"} = "Sunday";
print %weekday, "\n";
$weekday{"other"} = $array;
print $weekday{'other'}[3] . "\n";
print $$, "\n";
print cwd;
chdir("/home/sayno/go") or die "Can't go to that file";
print "\n", cwd, "\n";
print $PROCESS_ID;


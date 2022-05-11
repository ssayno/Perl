#! /usr/bin/perl -w

my $camels = "123";
print $camels, "\n";
print $camels + 1, "\n";
print $camels . "a", "\n";
$array = [1, 2, 3, 5];
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

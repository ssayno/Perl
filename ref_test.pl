#! /usr/bin/perl -w
use warnings;
use warnings;
use strict;
our $name = "zglhaoshuai";
my @array = qw(1 9 4 2 3);
sub bubble_sort_ref{
    my $bubble_sort_result_ref = $_[0];
    my $length = scalar(@$bubble_sort_result_ref);
    for(my $i=0;$i<$length;$i++){
        my $flag = 0;
        for(my $j=0;$j<$length-1-$i;$j++){
            if($bubble_sort_result_ref->[$j]>$bubble_sort_result_ref->[$j+1]){
                $flag = 1;
                ($bubble_sort_result_ref->[$j], $bubble_sort_result_ref->[$j+1]) = ($bubble_sort_result_ref->[$j+1], $bubble_sort_result_ref->[$j]);
            }
        }
        if($flag == 0){
            print "\033[32m(在进行全排序之前第($i)趟完成):\033[0m";
            return 0;
        }
    }
}
print @array;
bubble_sort_ref(\@array);
print @array;
print "\n", '-' x 30, "\n";
my %hash_table = (
    "name"=>"zgl",
    "age"=>12
);
my $ref_hash = \%hash_table;
$ref_hash->{"name"} = $name;
print %hash_table;


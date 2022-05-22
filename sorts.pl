#!/usr/bin/perl -w
use warnings;
use strict;

my @array = qw{1 23 45 89 22 24 340};
# Bubble Sort
sub bubble_sort{
    my @bubble_sort_result = @_;
    my $length = scalar(@bubble_sort_result);
    for(my $i=0;$i<$length;$i++){
        my $flag = 0;
        for(my $j=0;$j<$length-1-$i;$j++){
            if($bubble_sort_result[$j]>$bubble_sort_result[$j+1]){
                $flag = 1;
                ($bubble_sort_result[$j], $bubble_sort_result[$j+1]) = ($bubble_sort_result[$j+1], $bubble_sort_result[$j]);
            }
        }
        if($flag == 0){
            print "\b\033[32m(在进行全排序之前第($i)趟完成):\033[0m";
            print_array(@bubble_sort_result);
            return 0;
        }
    }
    print_array(@bubble_sort_result);
}
sub select_sort{
    my @select_sort_result = @_;
    my $length = scalar(@select_sort_result);
    for(my $i=0;$i<$length;$i++){
        my $index = $i;
        for(my $j=$i+1;$j<$length;$j++){
            if($select_sort_result[$j]>$select_sort_result[$index]){
                $index = $j;
            }
        }
        ($select_sort_result[$i], $select_sort_result[$index]) = ($select_sort_result[$index], $select_sort_result[$i]);
    }
    print_array(@select_sort_result);
}
sub insert_sort{
    my @insert_sort_result = @_;
    my $length = scalar(@insert_sort_result);
    for(my $i=1;$i<$length;$i++){
        my $now = $insert_sort_result[$i];
        my $index = $i;
        while($index>0 && $now < $insert_sort_result[$index - 1]){
            $insert_sort_result[$index] = $insert_sort_result[$index - 1];
            $index--;
        }
        $insert_sort_result[$index] = $now;
    }
    print_array(@insert_sort_result);
}
sub print_array{
    for my $item (@_){
        print $item, " ";
    }
    print "\b\n";
}
printf("原数组的元素:");
print_array(@array);
print "使用冒泡排序之后的元素:";
bubble_sort(@array);
print "使用选择排序之后的元素：";
select_sort(@array);
print "使用插入排序之后的元素：";
insert_sort(@array);
print "可以看到，使用了上述两种排序方式之后，我们的原数组没有发生变化";
print_array(@array);
print "\n使用 Perl 中的引用来尝试改变\n";
my $ref_array = \@array;
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
            print_array(@$bubble_sort_result_ref);
            return 0;
        }
    }
}
print "开始引用传递";
bubble_sort_ref($ref_array);
print_array(@array);

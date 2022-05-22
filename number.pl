#! /usr/bin/perl -w

print "Enter a number:";
my $number = <>;  # default is STDIN
chomp($number);
# print $number, "\n";
my $factorial = 1;
for(my $i=1;$i<=$number;$i++){
    $factorial *= $i;
}
printf("The factorial of %s is %s\n", $number, $factorial);
say STDOUT "Just a test for say function\n" x 3;
my $path = "/usr/bin/perl";
if(-f $path){
    print "是 Regular File";
}elsif(-T $path){
    print "是文本文件"
}else{
    print "不知道是什么文件"
}
print "\n", '-' x 50, "\n";
my $own="1,2?q.a.e";
for my $item (split(/[,?.]/, $own)){
    print $item, " ";
}
print "\b\n";
printf("\n");
if("printf" =~ /\<print\>/){
    print "匹配";
}else{
    print "不匹配";
}
my %hash = (
    "name"=>"周国良",
    "age"=>20
);
print "\n",$hash{"name"} ,"\n";

use v5.34;
use Cwd;
sub output{
    for my $item (@_){
        if(ref($item) eq "ARRAY"){
            print "这是一个引用";
            print @$item;
        }
        print $item, ",";

    }
    print "\b\n";
}
print '\n';
print "\n";
print "Just have a test", "\n";
my $name="周国良";
print q{$name}, qq{$name}, qx{date}, "\n";
print "可以使用qw{}来代替() 生成数组\n";
my @array=qw/a b c d e/;
print $";
print "\$\"是一个变量，代表着 Perl 中数组的分割符号，默认是空格（blank\n";
$"=",";
my @new_array = qw{a,b,c,d,e};
my @froots = qw(
apple banana carambola
coconut guava kumquat
mandarin nectarine peach
pear persimmon plum
);
print scalar(@froots);
my @t_array=("a","b","c","d");
print scalar(@t_array);
print "\n";
@t_array[1] = @new_array;
print @t_array;
print "\n\n";
print qx'ps $$';
print qx(ps $$);
my @new_array = qw{a,b,c,d,e};
opendir(DIR, '/tmp');
print telldir(DIR);
print cwd;
print "\n", readdir(DIR);

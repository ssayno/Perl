#! /bin/perl -w
use POSIX qw(strftime);
=pod
more line comment
=cut
$green="\033[32m";
$default="\033[0m";
$red="\033[91m";
print "当前文件名字" . __FILE__."\n";
print "hello, world\n";
$D=<<EOF;
hello

I
just have a test.
am
EOF
print $D;
$date=`date +%F`;
print $date;
sub ouput{
    foreach $element (@_){
        print $element, " ";
    }
    print "\b\n";
}
$loginName=qx'echo $USER';
print $loginName;
$var='This
is a multiline
variable
';
# 尝试格式化输出
printf("%s", $var);
$Uppercase="\UCan I help you?\n";
$Lowercase="\LYOU MAY NEED MY HELP, I think\n";
print $Uppercase;
print $Lowercase;
print "数组的操作";
@array=(1, 2, 3, 5);
$length = @array;
printf("数组\@array 的长度为%d\n", $length);
print "Perl 中进行字符串的连接也是比较的有意思.\n";
print '一个以 v 开头,后面跟着一个或多个用句点分隔的整数,会被当作一个字串文本。';
$num_string = v97.98.99.100;
print "\n".$num_string."\n";
print "数组的操作\n";
@new_array = qw?a b c d?;
foreach $item (@new_array){
    print $item . " ";
}
print "\b\n";
print "Perl 提供了像 Python 一样的倒叙数组元素的方法\n";
print "\@new_array 的最后一个元素\@new_array[-1] = @new_array[-1]\n";
print "\@new_array 的物理大小（最后一个索引）为 $#new_array\n";
print "\@new_array 的实际大小（数组长度）为", scalar @new_array , "\n";
print "\033[32mPerl 语言中有三个获取数组长度的方法\033[0m\n";
print "\t1. 将数组赋值给一个标量\n";
print "\t2. 使用 scalar \@array_name\n";
print "\t3. 像 Shell 一样，使用\$\@array_name，然后加一即可（返回的是最后一个下标的数值，所以要加一）\n";

print "当前行号" . __LINE__."\n";
@website = ("google", "baidu");
print "原数组\n";
ouput(@website);
print $green, "使用 push 进行元素加入到数组的末尾\n", $default;
push(@website, "stackoverflow");
ouput(@website);
print $green, "使用 pop 删除数组的最后一个元素并且返回，删除的元素为:", $default;
$last = pop(@website);
print $last, "\n";
ouput(@website);
print $green, "使用 shift 弹出数组的第一个元素并且返回，弹出的元素为:", $default;
$first = shift(@website);
print $first, "\n";
ouput(@website);
print $green, "使用 unshift(\@array_name, list) 批量添加元素到数组的开头", $default;
unshift(@website, ("segmentFault", "cnblog", "github", "gitee"));
print "\n";
ouput(@website);
print "Perl 语言也是可以进行数组的切割，不过是给索引，而不是指定长度\n";
ouput(@website[1,2]);
print "看了之后，我认为更像是数组的多次索取，而不是所谓的切割...\n";
print $green, "使用 splice(\@array_name, start_index, length, list) 进行替换，使用 list 替换从 start_index 开始 length 长度的数组元素\n", $default;
print "原数组:"; ouput(@website);
splice(@website, 1, 3, (45..57));
print "替换后的数组:"; ouput(@website);
print $red, "在上面的例子中，我们可以看到，即使指定了长度，但是我们传入了更大的数组，不影响，还是能够插入相应的数据\n", $default;
print "像其 Python 语言一样，Perl 有 Join 和 Split 方法来操作数组和字符串";
$name = "wo,xi,huan,ni,de,yan,jing,ni,de,bi,zi,ni,de,ce,yan";
print "将\$name\n\t$name\n使用split 分割为:\n\t";
ouput(split(",", "$name"));
print $green, "split 函数的一般模式为split(delimiter, \$string_name, limit_times)", $default;
print "\n指定分割次数为 4 次\n";
ouput(split(",", $name, 4));
print $green, "使用 join(delimiter, \@array_name) 方法来连接数组\n", $default;
print join("->", split(",", $name)), "\n";
print $green, "Perl 中的那些比较有意思的运算符号\n", $default;
print "Shell 中=,<=等于一类的是用来比较字符串, -eq,-ne 一类是的用来比较数字的
Perl 中则是反过来的\n";
print "Perl 中是 ne, le, 没有 \- 来修饰\n";
print $green, "有意思的 Perl 中的引号运算\n", $default;
print "\t1. q{\$abcd} 给 \$abcd 加单引号(加上单引号修饰，内容无法解析转义)", q{$abcd}, "\n";
$sayno="Rifiuto";
print "\t2. qq{\$name} 给内容加双引号，还是可以解义", qq{$sayno}, "\n";
print "\t3. qx{command} 给command 添加反引号，这样就可以执行 Shell 命令了, date:", qx{date} ,"\n";
system("pwd");
# exec( "echo $USER" );
print "Perl 中连接字符串就很傻比，用\".\" 来连接\n";
print "Perl中用\"x\"表示重复次数，案例如下\n";
print ('-' x 50);
print "\n";
$n_time = strftime "%Y-%m-%d %h:%M:%S", localtime;
print $n_time;

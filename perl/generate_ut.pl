#!/usr/bin/perl -w
use strict;
use warnings;


# my $a = 'aligned = 11.8424277753889 (426327399914 frames)';
# my $b = (split /\s+=\s+|\s+\(/, $a)[1];
# print $b,"\n";
# if ($a =~ /=\s+([\d\.]+)/)
# {
    # print "result is ", $1,"\n";
# }


my $log_name = $ARGV[0];
open(FILE,"$log_name") or die "can't open $log_name $!\n";
my $content = join("",<FILE>);
print "file name is ", "[",$log_name,"]:\n";
# print "file content is ", "[",$log_name,"]:\n", $content, "\n";
print "===============result is flowing begin ==============================\n";

# ##匹配注释行
# while($content =~ /(\/\*[\s\S]+?\*\/)|(\/\/.*)/g)
# {
    # print $&,"\n";
# }

# ##匹配{}

# while($content =~ /\{[^{]+?}/g)
# {
	# print "==item ==============================\n";
    # print $&,"\n";
# }

print "==replace contenet ing.... ==============================\n";
##替换操作



##匹配函数 begin
$content =~ s/(\/\*[\s\S]+?\*\/)|(\/\/.*)//g;  ##替换/* */ 和 //
# 执行 for 循环
for( $a = 0; $a < 30; $a = $a + 1 ){
	$content =~ s/\{[^{]+?}//g;   ##替换{}
}
$content =~ s/.*#include.*//g;   ##替换#include
$content =~ s/.*#endif.*//g;   ##替换#endif
$content =~ s/.*#if.*//g;   ##替换#if
$content =~ s/.*#define.*//g;   ##替换#define
$content =~ s/.*typedef[\s\S]+?;.*//g;   ##替换typedef
$content =~ s/\n+/\n/g;   ##替换空行
# 执行 for 循环
for( $a = 0; $a < 2; $a = $a + 1 ){
	$content =~ s/\([^(]*?\)//g;   ##替换( )中内容及后面的内容
}

# 执行 for 循环
for( $a = 0; $a < 2; $a = $a + 1 ){
	$content =~ s/,\s*\n.*/,/g;   ##替换( )中内容及后面的内容
}
$content =~ s/.*,.*//g;   ##替换( )中内容及后面的内容
$content =~ s/\n+/\n/g;   ##替换空行



my $info="Caine:Michael:Actor:14,LeafyDrive";  
my @personal=split (/:/,$info);  

print "personal is :", $personal[0] , "\n";
print "personal is :", $personal[1] , "\n";
print "personal is :", $personal[2] , "\n";


print "now file content is :\n", $content ;
print "==func item lists ==============================\n";
# my $splitfuncname = split( /^[^(]+/, $content);
# print $splitfuncname,"\n";
# # print $splitfuncname,"\n";

my @splitfuncname = split( /[^(]+/, $content);
# print $splitfuncname[0],"\n";

my $count=1;
while($count <=@splitfuncname){
   print "element $count: $splitfuncname[$count-1]\n";
   $count++;
}


# print $splitfuncname[1],"\n";
# print $splitfuncname[2],"\n";

# my $splitfuncname = (split /^[^(]+/, $content)[1];
# print $splitfuncname,"\n";




# if ($a =~ /=\s+([\d\.]+)/)
# {
	# print "==func item ==============================\n";
    # print "result is ", $1,"\n";
# }

# while($content =~ /^[^(]+/g)
# {
	# print "==func item ==============================\n";
    # print $&,"\n";
# }



##匹配函数 end











close(FILE);
print "===============result is flowing end ==============================\n";


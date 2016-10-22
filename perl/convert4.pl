#温度转换程序——最终版本
#输入
print "Enter a temperature in Celsius:\n";
$input = <STDIN>;
chomp($input); #去掉$celsius后面的换行符

#?:分组不捕获
if ($input =~ m/^([-+]?[0-9]+(\.[0-9]*)?)\s*([CF])$/i) {
	#如果程序运行到此，则已经匹配，$1保存数字，$2保存"C"或者"F"
	$inputNum = $1;
	$type     = $3;
	
	# if ($type eq "C" or $type eq "c")  ##匹配大小写都要写一下。
	if ($type =~ m/c/i)  ##匹配大小写都要写一下。
	{
		$celsius = $inputNum;
		$fahrenheit = ($celsius * 9 / 5 ) + 32;
	} else
	{
		$fahrenheit = $inputNum;
		$celsius = ($fahrenheit - 32) *5 / 9;
	}

	print "$celsius C is $fahrenheit F.\n";
	# print "%.2f C is %.2f F.\n", $celsius, $fahrenheit;
	
} else {
	print "Expecting a number followed by \"C\" or \"F\",\n";
	print "so i don't understand \"$input\".\n";
}








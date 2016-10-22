#输入
print "Enter a temperature in Celsius:\n";
$input = <STDIN>;
chomp($input); #去掉$celsius后面的换行符

#?:分组不捕获
if ($input =~ m/^([-+]?[0-9]+(?:\.[0-9]*)?)([CF])$/) {
	#如果程序运行到此，则已经匹配，$1保存数字，$2保存"C"或者"F"
	$inputNum = $1;
	$type     = $2;
	
	if ($type eq "C")
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








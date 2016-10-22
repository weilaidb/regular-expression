#输入
print "Enter a temperature in Celsius:\n";
$celsius = <STDIN>;
chomp($celsius); #去掉$celsius后面的换行符

if ($celsius =~ m/^[-+]?[0-9]+(\.[0-9]*)?$/) {
	$fahrenheit = ($celsius * 9 / 5 ) + 32;
	print "$celsius C is $fahrenheit F.\n";
	print "%.2f C is %.2f F.\n", $celsius, $fahrenheit;
	
} else {
	print "Expecting a number,so i don't understand \"$celsius\".\n";
}




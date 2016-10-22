$celsius = 30;
$fahrenheit = ($celsius * 9 / 5 ) + 32;
print "$celsius C is $fahrenheit F.\n";


$celsius = 20;
while ($celsius <= 45)
{
	$fahrenheit = ($celsius * 9 / 5 ) + 32;
	print "$celsius C is $fahrenheit F.\n";
	$celsius = $celsius + 5;
}


##使用正则表达式匹配文本
$reply = "2132333333333333";
if ($reply =~ m/^[0-9]+$/)
{
	print "only digits\n"
}
else
{
	print "not only digits\n"
}


$reply = "213233333333333xxx3";
if ($reply =~ m/^[0-9]+$/)
{
	print "only digits\n"
}
else
{
	print "not only digits\n"
}
























$letter="Dear =FIRST=,\n".
		"You have been chosen to win a brand new =TRINKET=! Free!\n".
		"Could you use another =TRINKET= in the =FAMILY= household?\n".
		"Yes =SUCKER=, I bet you could! Just respond by......\n";



$given = "Tom";
$family = "Cruise";
$wunderprize = "100% genuine faux diamond";

$letter =~ s/=FIRST=/$given/g;
$letter =~ s/=FAMILY=/$family/g;
$letter =~ s/=SUCKER=/$given $family/g;
$letter =~ s/=TRINKET=/fabulous $wunderprize/g;


print "replace content as follows:\n", $letter;



$price = "12.345000000";
$price =~ s/(\.\d\d[1-9]?)\d*/$1\n/;
print "price is :", $price;

$price = "37.50199";
$price =~ s/(\.\d\d[1-9]?)\d*/$1\n/;
print "price is :", $price;




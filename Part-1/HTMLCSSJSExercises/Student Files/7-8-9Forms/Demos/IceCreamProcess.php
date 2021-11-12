<?php
if (!isset($_POST['container'])) $_POST['container']="dixie cup";

switch ($_POST['flavor'])
{
	case "softChoc":
		$flavor = "Soft chocolate";
		break;
	case "softVan":
		$flavor = "Soft vanilla";
		break;
	case "softStraw":
		$flavor = "Soft strawberry";
		break;
	case "hardChoc":
		$flavor = "Hard chocolate";
		break;
	case "hardVan":
		$flavor = "Hard vanilla";
		break;
	case "hardStraw":
		$flavor = "Hard strawberry";
		break;
	case "hardMint":
		$flavor = "Mint Chocolate Chip";
		break;
	case "hardCC":
		$flavor = "Cookies and Cream";
		break;
	default :
		$flavor = "spinach";		
}

?>
<!DOCTYPE HTML>
<html>
<head>
<meta charset="UTF-8">
<title>Thank you for your order!</title>
</head>
<body>
<h1>Thank you for your order!</h1>

<p>You will be getting a <?=$_POST['container']?> with lots of <?=$flavor?> ice cream in it.</p>

<b>Toppings:</b><br>
<?php
$toppings="<ul>";
if (isset($_POST['sprinkles'])) $toppings .= "<li>Sprinkles</li>";
if (isset($_POST['nuts'])) $toppings .= "<li>Nuts</li>";
if (isset($_POST['whip'])) $toppings .= "<li>Whipped Cream</li>";
$toppings .= "</ul>";

if ($toppings != "<ul></ul>")
	echo $toppings;
else
	echo "none";
?>
<p>You will be getting a <?=$_POST['discount']?> discount off of our regular price of $10.00.
The ice cream will be delivered to you by email at <u><?=$_POST['email']?></u>.</p>
<p>We will politely disregard your request of: <i> <?=$_POST['requests']?></i></p>

</body>
</html>

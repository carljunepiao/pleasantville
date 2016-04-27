<?php
$host= 'localhost';
$user= 'root';
$pass='';
$db= 'PleasantVille';

$con = mysqli_connect($host,$user,$pass,$db);

if($con)
    echo 'connected successfully to PlasantVille database';

$title = $_POST['title'];
$proddate = $_POST['production date'];//pwede ra ba ni? naay space sa variable name? check palihug japs-alfi
$donationdate = $_POST['donation date'];
$amount = $_POST['amount'];
//di ba mumatter ang lowercase/uppercase? wa koy sure pacheck daw ani mga bai - alfi
$sql="INSERT into sponsorship (title, date, date_of_donation, amount_of_) values ($title, $proddate, $donationdate, $amount)";


$query=mysqli_query($con,$sql);

if($query)
    echo 'Registration Complete';
else
    echo 'A problem has been encountered. Pls ';
?>
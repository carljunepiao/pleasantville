<?php
$host= 'localhost';
$user= 'root';
$pass='';
$db= 'PleasantVille';

$con = mysqli_connect($host,$user,$pass,$db);

if($con)
    echo 'connected successfully to PlasantVille database';

$userID = $_POST['userid'];
$title = $_POST['title'];
$proddate = $_POST['proddate'];
$donationdate = $_POST['donationdate'];
$amount = $_POST['amount'];

$sql="INSERT into sponsorship (userid, title, date, date_of_donation, amount_of_donation) values ($userID, $title, $proddate, $donationdate, $amount)";


$query=mysqli_query($con,$sql);

if($query)
    echo 'Successfully added in Sponsorship';
else
    echo 'A problem has been encountered. Pls ';
?>
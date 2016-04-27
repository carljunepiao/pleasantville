<?php
$host= 'localhost';
$user= 'root';
$pass='';
$db= 'PleasantVille';

$con = mysqli_connect($host,$user,$pass,$db);

if($con)
    echo 'connected successfully to PlasantVille database';

$title = $_POST['title'];
$date = $_POST['date'];
$revenue = $_POST['revenue'];

$sql="INSERT into production(title, date, revenue) values ($title, $date, $revenue)";


$query=mysqli_query($con,$sql);

if($query)
    echo 'Registration Complete';
else
    echo 'A problem has been encountered. Pls ';
?>
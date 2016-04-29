<?php
$host= 'localhost';
$user= 'root';
$pass='';
$db= 'PleasantVille';

$con = mysqli_connect($host,$user,$pass,$db);

if($con)
    echo 'connected successfully to PlasantVille database';

$title = $_POST['title'];
$date = $_POST['proddate'];
$revenue = $_POST['revenue'];

$sql="INSERT into production(Title, Date, Revenue) values ('$title', '$date', '$revenue')";


$query=mysqli_query($con,$sql);

if($query)
    echo 'Adding to production successfully completed!';
else
    echo 'A problem has been encountered. Pls check add production.';
?>
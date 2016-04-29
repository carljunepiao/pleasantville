<?php

$host= 'localhost';
$user= 'root';
$pass='';
$db= 'PleasantVille';

$con = mysqli_connect($host,$user,$pass,$db);

if($con)
    echo 'connected successfully to PlasantVille database';

$title = $_POST['title'];
$proddate = $_POST['proddate'];

$sql="DELETE from production where Title = '$title' and Date = '$proddate';";

$query=mysqli_query($con,$sql);

if($query)
    echo 'Delete production completed';
else
    echo 'A problem has been encountered. ';
?>
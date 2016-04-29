<?php

$host= 'localhost';
$user= 'root';
$pass='';
$db= 'PleasantVille';

$con = mysqli_connect($host,$user,$pass,$db);

if($con)
    echo 'connected successfully to PlasantVille database';

$playwright = $_POST['playwright'];
$playtitle = $_POST['playtitle'];

$sql="DELETE from play where Playwright = '$playwright' and Title = '$playtitle';";

$query=mysqli_query($con,$sql);

if($query)
    echo 'Delete member completed';
else
    echo 'A problem has been encountered. ';
?>
<?php

$host= 'localhost';
$user= 'root';
$pass='';
$db= 'PleasantVille';

$con = mysqli_connect($host,$user,$pass,$db);

if($con)
    echo 'connected successfully to PlasantVille database';

$playwright = $_POST['select-playwright'];
$playtitle = $_POST['select-title'];

$sql="DELETE from play where Playwright = '$playwright' and Title = '$playtitle';";

$query=mysqli_query($con,$sql);

if($query){
	header("Location: ../../../html/admin.php");
    echo 'Delete member completed';
}
else{
	header("Location: ../../../html/admin.php");
    echo 'A problem has been encountered. ';
}
?>
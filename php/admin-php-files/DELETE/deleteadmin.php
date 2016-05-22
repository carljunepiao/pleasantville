<?php

$host= 'localhost';
$user= 'root';
$pass='';
$db= 'PleasantVille';

$con = mysqli_connect($host,$user,$pass,$db);

if($con)
    echo 'connected successfully to PlasantVille database';

$username = $_POST['select-admin-username'];

$sql="DELETE from administrator where Username = '$username';";

$query=mysqli_query($con,$sql);

if($query){
	header("Location: ../../../html/admin.php");
    echo 'Delete completed';
}
else{
	header("Location: ../../../html/admin.php");
    echo 'A problem has been encountered. ';
}
?>
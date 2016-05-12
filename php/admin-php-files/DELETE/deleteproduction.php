<?php

$host= 'localhost';
$user= 'root';
$pass='';
$db= 'PleasantVille';

$con = mysqli_connect($host,$user,$pass,$db);

if($con)
    echo 'connected successfully to PlasantVille database';

$prodNo = $_POST['select-production-id'];


$sql="DELETE from production where ProdNo = '$prodNo';";

$query=mysqli_query($con,$sql);

if($query){
	header("Location: ../../../html/admin.php");
    echo 'Delete production completed';
}
else{
	header("Location: ../../../html/admin.php");
    echo 'A problem has been encountered. ';
}
?>
<?php

$host= 'localhost';
$user= 'root';
$pass='';
$db= 'PleasantVille';

$con = mysqli_connect($host,$user,$pass,$db);

if($con)
    echo 'connected successfully to PlasantVille database';

$userID = $_POST['select-user-id'];

$sql="DELETE from users where UserID = '$userID';";

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
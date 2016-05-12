<?php

$host= 'localhost';
$user= 'root';
$pass='';
$db= 'PleasantVille';

$con = mysqli_connect($host,$user,$pass,$db);

if($con)
    echo 'connected successfully to PlasantVille database';

$memberid = $_POST['select-member-id'];

$sql="DELETE from member where MemberID = '$memberid';";

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
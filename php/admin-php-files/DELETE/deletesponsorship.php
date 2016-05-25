<?php

$host= 'localhost';
$user= 'root';
$pass='';
$db= 'PleasantVille';

$con = mysqli_connect($host,$user,$pass,$db);

if($con)
    echo 'connected successfully to PlasantVille database';

$Prod = $_POST['select-production'];
$userID = $_POST['select-user-id'];

$sql = "DELETE from sponsorship WHERE ProdNo = '$Prod' and UserID = '$userID' ";

$query=mysqli_query($con,$sql);

if($query){
    //header("Location: ../../../html/admin.php");
    echo 'Delete sponsorship completed';
}
else{
    //header("Location: ../../../html/admin.php");
    echo 'A problem has been encountered. ';
}
?>
<?php

$host= 'localhost';
$user= 'root';
$pass='';
$db= 'PleasantVille';

$con = mysqli_connect($host,$user,$pass,$db);

if($con)
    echo 'connected successfully to PlasantVille database';

$userID = $_POST['userid'];

$sql="DELETE from users where UserID = $userID";

$query=mysqli_query($con,$sql);

if($query)
    echo 'Delete completed';
else
    echo 'A problem has been encountered. ';
?>
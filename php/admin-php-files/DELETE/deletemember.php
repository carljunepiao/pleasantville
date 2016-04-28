<?php

$host= 'localhost';
$user= 'root';
$pass='';
$db= 'PleasantVille';

$con = mysqli_connect($host,$user,$pass,$db);

if($con)
    echo 'connected successfully to PlasantVille database';

$memberid = $_POST['memberid'];

$sql="DELETE from member where MemberID = $memberid";

$query=mysqli_query($con,$sql);

if($query)
    echo 'Delete member completed';
else
    echo 'A problem has been encountered. ';
?>
<?php

$host= 'localhost';
$user= 'root';
$pass='';
$db= 'PleasantVille';

$con = mysqli_connect($host,$user,$pass,$db);

if($con)
    echo 'connected successfully to PlasantVille database';

$title = $_POST['title'];
$userid = $_POST['userid'];
$proddate = $_POST['proddate'];

$sql="DELETE from sponsorship where Title = $title and UserID = $userid and Date = $proddate";

$query=mysqli_query($con,$sql);

if($query)
    echo 'Delete sponsorship completed';
else
    echo 'A problem has been encountered. ';
?>
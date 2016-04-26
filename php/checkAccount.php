<?php

$host= 'localhost';
$user= 'root';
$pass='';
$db= 'PleasantVille';

$con = mysqli_connect($host,$user,$pass,$db);

if($con)
	echo 'connected successfully to PlasantVille database';

$username = $_POST['username'];
$password = $_POST['password'];

$sql = "SELECT count(*) FROM users WHERE Username = '$username' and Password = '$password' ";

$query=mysqli_query($con,$sql);

if($query)
	echo 'The account exists';
else
	echo 'The account does not exist';
?>
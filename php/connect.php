<?php

$host= 'localhost';
$user= 'root';
$pass='';
$db= 'PleasantVille';

$con = mysqli_connect($host,$user,$pass,$db);

if($con)
	echo 'connected successfully to PlasantVille database';

$fname = $_POST['fname'];
$lname = $_POST['lname'];
$contact = $_POST['contact'];
$address = $_POST['address'];
$bday = $_POST['bday'];
$username = $_POST['username'];
$password = $_POST['password'];

$sql="insert into Registration(fname,lname,contact,address,bday,username,password) values ('$fname', '$lname', '$contact', '$address', '$bday', '$username', '$password')";


$query=mysqli_query($con,$sql);

if($query)
	echo 'data inserted successfully';
else
	echo 'nope';
?>
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

$sql = "SELECT  '$username' , '$password' FROM user";

$query = mysqli_query($con,$sql);

if($query){
	echo 'The account exists';
        $login = "UPDATE users SET Log_In = 1; WHERE Username = '$username'";
        $setLogIn = mysqli_query($con,$login);
        if($setLogIn)
            echo 'You have logged in';
        else
            echo 'Unable to Log In';
}
else{
	echo 'The account does not exist';
}
?>
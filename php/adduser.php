<?php
//this is for the administrator
//similar to connect.php but has user type, the admin can add wether a user is a patron or a sponsor
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
$username = $_POST['username'];
$password = $_POST['password'];
$type = $_POST['type'];
//sure na registration ni or user?. check daw - alfi
//added type to be inserted in the table
$sql="insert into Registration(fname,lname,contact_no,address,username,password,type) values ($fname', '$lname', '$contact', '$address', '$username', '$password','$type')";


$query=mysqli_query($con,$sql);

if($query)
    echo 'Registration Complete';
else
    echo 'A problem has been encountered. Pls ';
?>
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
//di ba mumatter ang lowercase/uppercase? wa koy sure pacheck daw ani mga bai - alfi
$sql="INSERT into member(fname, lname, contactno) values ($fname, $lname, $contact)";


$query=mysqli_query($con,$sql);

if($query)
    echo 'Registration Complete';
else
    echo 'A problem has been encountered. Pls ';
?>
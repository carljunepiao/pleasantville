<?php
$host= 'localhost';
$user= 'root';
$pass='';
$db= 'PleasantVille';

$con = mysqli_connect($host,$user,$pass,$db);

if($con)
    echo 'connected successfully to PlasantVille database';

$playwright = $_POST['select-playwright-id'];
$playtitle = $_POST['select-title'];
$time = $_POST['playtime'];
$poster = $_POST['poster'];

$sql="UPDATE play SET Time = '$time' , Poster = '$poster' WHERE Playwright = '$playwright' AND Title = '$playtitle'";


$query=mysqli_query($con,$sql);

if($query){
	header("Location: ../../../html/admin.php");
    echo 'Edit play complete!';
}
else{
	header("Location: ../../../html/admin.php");
    echo 'A problem has been encountered. Pls check addplay.';
}
?>
<?php

$host= 'localhost';
$user= 'root';
$pass='';
$db= 'PleasantVille';

$con = new mysqli($host,$user,$pass,$db);

if($con)
    echo 'connected successfully to PleasantVille database';

$userName = $_POST['select-user-id'];
$Title = $_POST['select-title'];
$Date = $_POST['select-date'];
$Seats = $_POST['select-seat'];

$sql = "SELECT userID from users WHERE username = '$userName'";
$query = $con->query($sql);

if($query)
    echo 'The user exists. ';
else
    echo 'A problem has been encountered. ';

$row = $query->fetch_assoc();
$userID = $row["userID"];

$sql1 = "UPDATE tickets SET UserID = '$userID' WHERE Title = '$Title' AND Date = '$Date' AND SeatNo = '$Seats' ";
//UPDATE Customers SET ContactName='Alfred Schmidt', City='Hamburg' WHERE CustomerName='Alfreds Futterkiste';
$query1 = mysqli_query($con,$sql1);

if($query1)
    echo 'You have bought the ticket. ';
else
    echo 'A problem has been encountered. ';

$sql2 = "UPDATE seats SET Taken = '1' WHERE SeatNo = '$Seats' ";
$query2 = mysqli_query($con,$sql2 );

if($query2)
    echo 'Your seat has been reserved. ';
else
    echo 'A problem has been encountered. ';

?>
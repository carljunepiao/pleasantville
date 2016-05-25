<?php

$host= 'localhost';
$user= 'root';
$pass='';
$db= 'PleasantVille';

$con = new mysqli($host,$user,$pass,$db);

if($con)
    echo 'connected successfully to PleasantVille database';

$userID = $_POST['select-user-id'];
$Title = $_POST['select-title'];
$Date = $_POST['select-date'];
$Seats = $_POST['select-seat'];

$sql1 = "UPDATE tickets SET UserID = '$userID' WHERE Title = '$Title' AND Date = '$Date' AND SeatNo = '$Seats' ";
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

$sql = "SELECT ProdNo from production WHERE Title = '$Title' and Date = '$Date'";
$query = $con->query($sql);

if($query)
    echo 'The production exists. ';
else
    echo 'A problem has been encountered. ';

$row = $query->fetch_assoc();
$Prod= $row["ProdNo"];

$final="INSERT INTO tickets(TicketID, UserID, SeatNo, ProdNo, Title, Date, Cost) VALUES('$Seats', '$userID', '$Seats', '$Prod', '$Title', '$Date', 100)";
$finalq = mysqli_query($con,$final );
        
if($finalq)
    echo 'The ticket has been bought. ';
else
    echo 'A problem has been encountered. ';
?>

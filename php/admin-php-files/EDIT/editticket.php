<?php

$host= 'localhost';
$user= 'root';
$pass='';
$db= 'PleasantVille';

$con = new mysqli($host,$user,$pass,$db);

if($con)
    echo 'connected successfully to PleasantVille database';

$userID = $_POST['select-user-id'];
$Prod = $_POST['select-production'];
$Seats = $_POST['select-seat'];
$Ticket = $Seats;
// $sql1 = "INSERT INTO tickets (UserID, SeatNo, Title, )
// $query1 = mysqli_query($con,$sql1);

// if($query1)
//     echo 'You have bought the ticket. ';
// else
//     echo 'A problem has been encountered. ';

$sql2 = "UPDATE seats SET Taken = '1' WHERE SeatNo = '$Seats' ";
$query2 = mysqli_query($con,$sql2 );

if($query2)
    echo 'Your seat has been reserved. ';
else
    echo 'A problem has been encountered. ';

$sql = "SELECT Title from production WHERE ProdNo = '$Prod'";
$query = $con->query($sql);

if($query)
    echo 'The Title exists. ';
else
    echo 'A problem has been encountered. ';

$row = $query->fetch_assoc();
$Title= $row["Title"];

$sql = "SELECT Date from production WHERE ProdNo = '$Prod'";
$query = $con->query($sql);

if($query)
    echo 'The DAte exists. ';
else
    echo 'A problem has been encountered. ';

$row = $query->fetch_assoc();
$Date= $row["Date"];

$final="INSERT INTO tickets (TicketID, UserID, SeatNo, Title, Date, Cost) VALUES ('$Ticket', '$userID', '$Seats', '$Title', '$Date', 100)";
echo $final;
$finalq = mysqli_query($con, $final);

if($finalq){
    // header("Location: ../../../html/admin.php");
    echo 'The ticket has been bought. ';
}
else{
    // header("Location: ../../../html/admin.php");
    echo 'A problem has been encountered. ';
}
?>

<?php
<<<<<<< HEAD

$host= 'localhost';
$user= 'root';
$pass='';
$db= 'PleasantVille';

$con = new mysqli($host,$user,$pass,$db);

if($con->connect-error)
    echo 'connected successfully to PlasantVille database';

$userName = $_POST['select-user'];
$Title = $_POST['select-title'];
$Date = $_POST['select-date'];
$Seats = $_POST['select-seat'];

$sql = "SELECT userID from users WHERE username = '$userName' limit = '1'";
$query = mysqli_query($con,$sql);

if($query)
    echo 'The user exists. ';
else
    echo 'A problem has been encountered. ';

$value = mysql_fetch_object($query);
$userID = $value->userID;

$sql1 = "UPDATE tickets SET UserID = '$userID' WHERE Title = '$Title' AND Date = '$Date' AND SeatNo = '$Seats' ";
//UPDATE Customers SET ContactName='Alfred Schmidt', City='Hamburg' WHERE CustomerName='Alfreds Futterkiste';
$query1 = mysqli_query($con,$sql1);

if($query1)
    echo 'You have bought the ticket. ';
else
    echo 'A problem has been encountered. ';

$sql2 = "UPDATE seats SET Taken = '1' WHERE SeatNo = '$Seats' ";
$query2 = mysqli_query($con,2);

if($query2)
    echo 'Your seat has been reserved. ';
else
    echo 'A problem has been encountered. ';
=======
    $servername = "localhost";
    $username = "root";
    $password = "";
    $dbname = "Pleasantville";

    // Create connection
    $conn = new mysqli($servername, $username, $password, $dbname);
    // Check connection
    if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
    }
//query
    $sql=mysql_query("SELECT UserID FROM users");

    if(mysql_num_rows($sql)){
        $select= '<select name="UserID">';
        while($rs=mysql_fetch_array($sql)){
            $select.='<option value="'.$rs['UserID'].'">'</option>';
        }
    }
    $select.='</select>';
    echo $select;
>>>>>>> dfb70c18b009a2c577f780d76a976824b9d041cc
?>
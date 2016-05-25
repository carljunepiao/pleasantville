<?php

// php select option value from database

$hostname = "localhost";
$username = "root";
$password = "";
$databaseName = "pleasantville";

// connect to mysql database

$connect = mysqli_connect($hostname, $username, $password, $databaseName);

$Title = $userID = $_POST['select-date'];

// mysql select query
$query = "SELECT Date FROM play WHERE Title = '$Title'";

$result = mysqli_query($connect, $query);

$options = "";

while($row = mysqli_fetch_array($result))
{
    $options = $options."<option>$row[0]</option>";
}
?>


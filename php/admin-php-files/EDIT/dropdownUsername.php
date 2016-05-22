<?php

// php select option value from database

$hostname = "localhost";
$username = "root";
$password = "";
$databaseName = "Pleasantville";

// connect to mysql database

$connect = mysqli_connect($hostname, $username, $password, $databaseName);

// mysql select query
$query = "SELECT Username FROM `administrator`";

$result = mysqli_query($connect, $query);

$options = "";

while($row = mysqli_fetch_array($result))
{
	echo "sulod man";
    $options = $options."<option>$row[0]</option>";
}
?>


<?php
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

$sql = "SELECT ProdNo, Title, Date, Revenue FROM production";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    echo "<table><tr><th>Production Number</th><th>Title</th><th>Production Date</th><th>Revenue</th></tr>";
    // output data of each row
    while($row = $result->fetch_assoc()) {
        echo "<tr><td>".$row["ProdNo"]."</td><td>".$row["Title"]."</td><td>".$row["Date"]."</td><td>".$row["Revenue"]."</td></tr>";
    }
    echo "</table>";
} else {
    echo "0 results";
}
$conn->close();
?>

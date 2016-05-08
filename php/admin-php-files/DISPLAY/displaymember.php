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

$sql = "SELECT MemberID, Fname, Lname, Contact_No FROM member";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    echo "<table><tr><th>MemberID</th><th>First Name</th><th>Last Name</th><th>Contact No.</th></tr>";
    // output data of each row
    while($row = $result->fetch_assoc()) {
        echo "<tr><td>".$row["MemberID"]."</td><td>".$row["Fname"]."</td><td>".$row["Lname"]."</td><td>".$row["Contact_No"]."</td></tr>";
    }
    echo "</table>";
} else {
    echo "0 results";
}
$conn->close();
?>

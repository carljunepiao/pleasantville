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

    $sql = "SELECT UserID, Fname, Lname, Contact_No, Username, Type FROM users";
    $result = $conn->query($sql);

    if ($result->num_rows > 0) {
        echo "<table><tr><th>UserID</th><th>First Name</th><th>Last Name</th><th>Contact No.</th><th>Username</th><th>Type</th></tr>";
        // output data of each row
        while($row = $result->fetch_assoc()) {
            echo "<tr><td>".$row["UserID"]."</td><td>".$row["Fname"]."</td><td>".$row["Lname"]."</td><td>".$row["Contact_No"]."</td><td>".$row["Username"]."</td><td>".$row["Type"]."</td></tr>";
        }
        echo "</table>";
    }
    else {
        echo "0 results";
    }
    $conn->close();
?>

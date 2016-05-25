
<!DOCTYPE html>
<html>
<head>
    <title>Member Display</title>
    <link rel="stylesheet" type="text/css" href="../../../../css/admin-display.css">
</head>
<body>

    <div class="container">

        <center><a class="back" href="../displaymember.php">Back</a></center>

        <header>
            <h1>Members</h1>
            <center><img class="logo" src="../../../../images/adminicon.jpg" alt="PleasantvilleLogo"></center>
        </header>

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

            $fname = $_POST['fname'];
            $lname = $_POST['lname'];

            $sql = "SELECT MemberID, FName, LName, ContactNo FROM member WHERE FName LIKE '%$fname%' and LName LIKE '%$lname'";
            $result = $conn->query($sql);

            if ($result->num_rows > 0) {
                echo "<table><tr class='header'><th>MemberID</th><th>First Name</th><th>Last Name</th><th>Contact No.</th></tr>";
                // output data of each row
                while($row = $result->fetch_assoc()) {
                    echo "<tr><td>".$row["MemberID"]."</td><td>".$row["FName"]."</td><td>".$row["LName"]."</td><td>".$row["ContactNo"]."</td></tr>";
                }
                echo "</table>";
            }
            else {
                echo "0 results";
            }
            $conn->close();
        ?>

    </div>

</body>
</html>
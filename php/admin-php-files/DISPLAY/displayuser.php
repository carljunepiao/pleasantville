
<!DOCTYPE html>
<html>
<head>
    <title>User Display</title>
    <link rel="stylesheet" type="text/css" href="../../../css/admin-display.css">
</head>
<body>

    <div class="container">

        <center><a class="back" href="../../../html/admin.php">Back</a></center>

        <header>
            <h1>Users</h1>
            <center><img class="logo" src="../../../images/adminicon.jpg" alt="PleasantvilleLogo"></center>
        </header>

        <form action="SEARCH/searchuser.php" method="post" accept-charset="utf-8"/>
            <h5>Search User</h5>
            <input type="text" placeholder="First Name" name="fname"></input>
            <input type="text" placeholder="Last Name" name="lname"></input>
            <input class="enter" type="submit" value="Search"></input>
        </form>

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

            $sql = "SELECT `UserID`, `Fname`, `Lname`, `ContactNo`, `Username`, `Patron`, `Sponsor` FROM `users` WHERE 1";
            $result = $conn->query($sql);

            if ($result->num_rows > 0) {
                echo "<table><tr><th>UserID</th><th>First Name</th><th>Last Name</th><th>Contact No.</th><th>Username</th><th>Patron</th><th>Sponsor</th></tr>";
                // output data of each row
                while($row = $result->fetch_assoc()) {
                    echo "<tr><td>".$row["UserID"]."</td><td>".$row["Fname"]."</td><td>".$row["Lname"]."</td><td>".$row["ContactNo"]."</td><td>".$row["Username"]."</td><td>".$row["Patron"]."</td><td>".$row["Sponsor"]."</td></tr>";
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


<!DOCTYPE html>
<html>
<head>
    <title>Member Display</title>
    <link rel="stylesheet" type="text/css" href="../../../css/admin-display.css">
</head>
<body>

    <div class="container">

        <center><a class="back" href="../../../html/admin.php">Back</a></center>

        <header>
            <h1>Members</h1>
            <center><img class="logo" src="../../../images/adminicon.jpg" alt="PleasantvilleLogo"></center>
        </header>

        <form action="SEARCH/searchmember.php" method="post" accept-charset="utf-8"/>
            <h5>Search Members</h5>
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

            $sql = "SELECT MemberID, FName, LName, ContactNo FROM member";
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
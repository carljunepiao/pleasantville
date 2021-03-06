
<!DOCTYPE html>
<html>
<head>
    <title>Cast Display</title>
    <link rel="stylesheet" type="text/css" href="../../../css/admin-display.css">
</head>
<body>

    <div class="container">

        <center><a class="back" href="../../../html/admin.php">Back</a></center>

        <header>
            <h1>Casts</h1>
            <center><img class="logo" src="../../../images/adminicon.jpg" alt="PleasantvilleLogo"></center>
        </header>

        <form action="SEARCH/searchcast.php" method="post" accept-charset="utf-8"/>
            <h5>Search Casts</h5>
            <input type="text" placeholder="Title" name="title"></input>
            <input type="text" placeholder="Member Job" name="memberjob"></input>
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

            $sql = "SELECT MemberID, Fname, Lname, ProdNo, Title, Date, MemberJob FROM casts NATURAL JOIN member";
            $result = $conn->query($sql);

            if ($result->num_rows > 0) {
                echo "<table><tr><th>MemberID</th><th>First Name</th><th>Last Name</th><th>Production Number</th><th>Title</th><th>Date</th><th>Job</th></tr>";
                // output data of each row
                while($row = $result->fetch_assoc()) {
                    echo "<tr><td>".$row["MemberID"]."</td><td>".$row["Fname"]."</td><td>".$row["Lname"]."</td><td>".$row["ProdNo"]."</td><td>".$row["Title"]."</td><td>".$row["Date"]."</td><td>".$row["MemberJob"]."</td></tr>";
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
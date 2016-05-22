
<!DOCTYPE html>
<html>
<head>
    <title>Play Display</title>
    <link rel="stylesheet" type="text/css" href="../../../css/admin-display.css">
</head>
<body>

    <div class="container">

        <center><a class="back" href="../../../html/admin.php">Back</a></center>

        <header>
            <h1>Plays</h1>
            <center><img class="logo" src="../../../images/adminicon.jpg" alt="PleasantvilleLogo"></center>
        </header>

        <form action="SEARCH/searchplay.php" method="post" accept-charset="utf-8"/>
            <h5>Search Play</h5>
            <input type="text" placeholder="Title" name="title"></input>
            <input type="text" placeholder="Playwright" name="playwright"></input>
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

            $sql = "SELECT Playwright, Title, Time, Poster FROM play";
            $result = $conn->query($sql);

            if ($result->num_rows > 0) {
                echo "<table><tr><th>Title</th><th>Playwright</th><th>Time</th><th>Poster</th></tr>";
                // output data of each row
                while($row = $result->fetch_assoc()) {
                    echo "<tr><td>".$row["Title"]."</td><td>".$row["Playwright"]."</td><td>".$row["Time"]."</td><td>".$row["Poster"]."</td></tr>";
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
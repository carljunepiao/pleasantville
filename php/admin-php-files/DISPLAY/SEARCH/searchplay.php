
<!DOCTYPE html>
<html>
<head>
    <title>Play Display</title>
    <link rel="stylesheet" type="text/css" href="../../../../css/admin-display.css">
</head>
<body>

    <div class="container">

        <center><a class="back" href="../displayplay.php">Back</a></center>

        <header>
            <h1>Plays</h1>
            <center><img class="logo" src="../../../../images/adminicon.jpg" alt="PleasantvilleLogo"></center>
        </header>

        <?php
            $servername = "localhost";
            $username = "root";
            $password = "";
            $dbname = "Pleasantville";

            $title = $_POST['title'];
            $playwright = $_POST['playwright'];
            // Create connection
            $conn = new mysqli($servername, $username, $password, $dbname);
            // Check connection
            if ($conn->connect_error) {
                die("Connection failed: " . $conn->connect_error);
            }

            $sql = "SELECT Playwright, Title, Time, Poster FROM play WHERE Title LIKE '%$title' or Playwright LIKE '%$playwright%'";
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
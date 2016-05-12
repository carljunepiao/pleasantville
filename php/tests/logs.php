<!DOCTYPE html>
<html>
<head>
    <title>Transaction Logs</title>
    <link rel="stylesheet" type="text/css" href="../../css/admin-display.css">
</head>
<body>

    <div class="container">

        <center><a class="back" href="../../html/admin.php">Back</a></center>

        <header>
            <h1>Backup</h1>
            <center><img class="logo" src="../../images/adminicon.jpg" alt="PleasantvilleLogo"></center>
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

            $sql = "SELECT Info, Time FROM translogs";
            $result = $conn->query($sql);

            if ($result->num_rows > 0) {
                echo "<table><tr><th>Transaction Info</th><th>Time</th></tr>";
                // output data of each row
                while($row = $result->fetch_assoc()) {
                    echo "<tr><td>".$row["Info"]."</td><td>".$row["Time"]."</td></tr>";
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
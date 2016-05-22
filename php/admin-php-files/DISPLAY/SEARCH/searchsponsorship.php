
<!DOCTYPE html>
<html>
<head>
    <title>Sponsorship Display</title>
    <link rel="stylesheet" type="text/css" href="../../../../css/admin-display.css">
</head>
<body>

    <div class="container">

        <center><a class="back" href="../displaysponsorship.php">Back</a></center>

        <header>
            <h1>Sponsorships</h1>
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

            $title = $_POST['title'];

            $sql = "SELECT UserID, ProdNo, Title, Date, Date_of_Donation, Amount_of_Donation FROM sponsorship WHERE Title LIKE '%$title%'";
            $result = $conn->query($sql);

            if ($result->num_rows > 0) {
                echo "<table><tr><th>UserID</th><th>Production Number</th><th>Title</th><th>Production Date</th><th>Date of Donation</th><th>Amount of Donation</th></tr>";
                // output data of each row
                while($row = $result->fetch_assoc()) {
                    echo "<tr><td>".$row["UserID"]."</td><td>".$row["ProdNo"]."</td><td>".$row["Title"]."</td><td>".$row["Date"]."</td><td>".$row["Date_of_Donation"]."</td><td>".$row["Amount_of_Donation"]."</td></tr>";
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

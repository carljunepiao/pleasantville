<!DOCTYPE html>
<html>
<head>
	<title>Restore</title>
	<link rel="stylesheet" type="text/css" href="../../css/admin-display.css">
</head>
<body>

	<div class="container">

        <center><a class="back" href="../../html/admin.php">Back</a></center>

        <header>
            <h1>Restore</h1>
            <center><img class="logo" src="../../images/adminicon.jpg" alt="PleasantvilleLogo"></center>
        </header>

        <?php
            $servername = "localhost";
            $username = "root";
            $password = "";
            $dbname = "Pleasantville";

            // Create connection
            $conn = mysqli_connect($servername, $username, $password, $dbname);
            // Check connection
            if ($conn->connect_error) {
                die("Connection failed: " . $conn->connect_error);
            }

            shell_exec("mysql -u root pleasantville < backupss.sql 2>&1");
            $conn->close();
        ?>

    </div>

</body>
</html>
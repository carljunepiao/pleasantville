<!DOCTYPE html>
<html>
<head>
	<title>Backup</title>
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
            $host= 'localhost';
            $user= 'root';
            $pass='';
            $db= 'PleasantVille';

            $conn = mysqli_connect($host,$user,$pass,$db);
            // Check connection
            if ($conn->connect_error) {
                die("Connection failed: " . $conn->connect_error);
            }

            shell_exec("mysqldump -u root pleasantville > backupss.sql 2>&1");
            $conn->close();
        ?>

    </div>

</body>
</html>
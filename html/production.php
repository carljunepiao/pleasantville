<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="utf-8">
	<title>Productions</title>
	<link rel="icon" href="../images/logo.jpg">
	<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Tangerine">
	<link rel="stylesheet" href="../css/index.css">
	<link rel="stylesheet" href="../css/main.css">

	<script src="../javascripts/production-notif.js"></script>
</head>

<body>
	<div class="container">
		<header>
			<nav class="secondary-navigation">
				<ul>
					<li><a href="../html/register.php">Register</a></li>
					<li><a href="../html/login.php">Login</a></li>
				</ul>
			</nav>
			<img class="logo" src="../images/logo.jpg" alt="PleasantvilleLogo">
			<nav class="main-navigation">
				<ul>
					<li><a href="../html/index.php">Home</a></li>
					<li><a href="../html/production.php">Production</a></li>
					<li><a href="../html/admin-login.php">Administration</a></li>
				</ul>
			</nav>
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
		
		<footer>
			<h4>Contact us</h4>
			<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit</p>
			<p>`Maestro Productions</p>
			<p>japheth162@gmail.com : 09123456789</p>
			<p>Itanimulli</p>
		</footer>
	</div>

</body>

</html>
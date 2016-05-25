<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="utf-8">
	<title>The Pleasantville Theater</title>
	<link rel="icon" href="../images/logo.jpg">
	<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Tangerine">
	<link rel="stylesheet" href="../css/main.css">

	<script src="../javascripts/main-notif.js"></script>
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
		<div>
			<h1>The Pleasantville Theater</h1>
			<h2>Pleasantville Community Theater Group</h2>
			<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
			tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
			quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
			consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
			cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
			proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
		</div>
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
                while($row = $result->fetch_array()) {
                	echo "<div class=\"highlight\">
 	               			<h3>
 	               			<div class=\"description\">
 	               				<p>"
 	               					.$row["Title"]."</br>"
 	               					.$row["Playwright"]."</br>"
 	               					.$row["Time"].
 	               				"</p>
 	               				<p class=\"desc\">
 	               					Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse	cillum dolore eu ugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
 	               				</p>
 	               			</div>
 	               		  </div>";
                }
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
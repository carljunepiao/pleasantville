<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<title>Productions</title>
	<link rel="icon" href="../images/logo.jpg">
	<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Tangerine">
	<link rel="stylesheet" href="../css/main.css">
	<link rel="stylesheet" href="../css/index.css">
	<script src="../javascripts/production-notif.js"></script>
	<script type="text/javascript">
        window.history.forward();
        function noBack()
        {
            window.history.forward();
        }
	</script>
</head>
<body onLoad="noBack();" onpageshow="if (event.persisted) noBack();" onUnload="">
	<audio src="../audio/canon.mp3" autoplay loop controls></audio>
	<div class="container">
		<header>
			<button><a href="login.php">log out</a></button>
			<img class="logo" src="../images/logo.jpg" alt="PleasantvilleLogo">
			<nav class="main-navigation">
				<ul>
					<li><a href="../html/newindex.php">Home</a></li>
					<li><a href="../html/production.php">Production</a></li>
					<!-- <li><a href="../html/admin-login.php">Administration</a></li> -->
				</ul>
			</nav>
		</header>
		<div>
			<h1>Theater Productions</h1>
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
                while($row = $result->fetch_assoc()) {
                	echo "<div class=\"highlight\">
 	               			<h3>
 	               			<div class=\"description\">
 	               				<p>"
 	               					.$row["Title"]."</br>"
 	               					.$row["Playwright"]."</br>"
 	               					.$row["Time"].
 	               				"</p>
 	               			</div>
 	               		  </div>";
                }
            }
            else {
                echo "0 results";
            }
            $conn->close();

        ?>

		<form class="cont" action="../php/admin-php-files/EDIT/editticketHOME.php" method="post" accept-charset="utf-8"/>
			<select class="uo" required name="select-user-id">
				<option selected disabled>Select User Name</option>
				<?php include '../php/admin-php-files/EDIT/dropdownUsername.php'; echo $options;?>
			</select>
			<select class="uo" required name="select-title">
				<option selected disabled>Select Title</option>
				<?php include '../php/admin-php-files/EDIT/dropdownPlay.php'; echo $options;?>
			</select>
			<input class="uo" type="date" name="select-date" min="2016-05-26" max="2016-06-05">
			<select class="uo" required name="select-seat">
				<option selected disabled>Select Seat</option>
				<?php include '../php/admin-php-files/EDIT/dropdownSeat.php'; echo $options;?>
			</select>
			<center><input class="user-option" type="submit" value="Buy Ticket"></input></center>
		</form>

		<form class="cont" action="../php/admin-php-files/ADD/addsponsorshipHOME.php" method="post" accept-charset="utf-8"/>
			<select class="uo" required name="select-user-id">
				<option selected disabled>Select User Name</option>
                <?php include '../php/admin-php-files/EDIT/dropdownUsername.php'; echo $options;?>
			</select>
			<select class="uo" required name="select-production">
				<option selected disabled>select-production</option>
                <?php include '../php/admin-php-files/EDIT/dropdownProduction.php'; echo $options;?>
			</select>
			<input class="uo" required="" type="text" class="form-control" placeholder="donation date" onfocus="(this.type='date')" name="donationdate"/>
			<input class="uo" type="number" placeholder="amount" name="amount"></input>
			<center><input class="user-option" type="submit" value="Donate"></input></center>
		</form>

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
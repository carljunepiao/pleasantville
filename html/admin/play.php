<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<title>The Pleasantville Theater</title>
	<link rel="icon" href="../../images/adminicon.jpg">
	<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Tangerine">
	<link rel="stylesheet" href="../../css/main.css">
	<link rel="stylesheet" href="../../css/admin.css">
	<script type="text/javascript">
        window.history.forward();
        function noBack()
        {
            window.history.forward();
        }
	</script>
</head>
<body onLoad="noBack();" onpageshow="if (event.persisted) noBack();" onUnload="">

	<div class="container">
	<nav class="main-navigation">
		<ul>
			<li><a href="../admin-login.php">Log out</a></li>
		</ul>
	</nav>
	<header>
		<h1>Play</h1>
		<img class="logo" src="../../images/adminicon.jpg" alt="PleasantvilleLogo">
	</header>
		<nav class="secondary-navigation">
			<ul>
				<li><a href="user.php">User</a></li>
				<li><a href="production.php">Production</a></li>
				<li><a href="casts.php">Casts</a></li>
				<li><a href="member.php">Member</a></li>
				<li><a href="play.php">Play</a></li>
				<li><a href="seats.php">Seats</a></li>
				<li><a href="sponsorship.php">Sponsorship</a></li>
				<li><a href="tickets.php">Tickets</a></li>
				<li><a href="admin.php">Admin</a></li>
				<li><a href="../../php/tests/backup.php">Backup</a></li>
				<li><a href="../../php/tests/restore.php">Restore</a></li>
				<li><a href="../../php/tests/logs.php">Transactions</a></li>
			</ul>
		</nav>

		<!-- /////////////////// PLAY /////////////////////// -->
		<form action="../../php/admin-php-files/ADD/addplay.php" method="post" accept-charset="utf-8"/>
			<div class="admin br1">
				<h5>Add Play</h5>
				<div class="box">
					<div class="properties">
						<input required type="text" placeholder="Playwright" name="playwright"></input>
						<input required type="text" placeholder="Title" name="title"></input>				
						<input required type="text" name="date" min='2016-05-26' placeholder="Play Start Date"
						onfocus="this.type='date';this.focus();" onblur="if(this.value == '') this.type='text';"/>
						<input required type="text" name="date" min='2016-05-26' placeholder="Play End Date"
						onfocus="this.type='date';this.focus();" onblur="if(this.value == '') this.type='text';"/>
						<input required="" name="playtime" type="text" min="08:00:00" max="18:00:00" class="form-control" placeholder="Play Time" onfocus="this.type='time';this.focus();" onblur="if(this.value == '') this.type='text';"/>
						<input type="text" class="form-control"
						placeholder="Choose Poster" onfocus="(this.type='file')" name="poster"/>
					</div>
					<input class="enter" type="submit" value="Submit"></input>
				</div>
			</div>
		</form>
		<form action="../../php/admin-php-files/EDIT/editplay.php" method="post" accept-charset="utf-8"/>
			<div class="admin">
				<h5>Edit Play</h5>
				<div class="box">
					<div class="properties">
						<select required name="select-playwright-id">
							<option selected disabled>Select Playwright ID</option>
							<?php include '../../php/admin-php-files/EDIT/dropdownPlaywright.php'; echo $options;?>
						</select>
						<select required name="select-title">
							<option selected disabled>Select Title</option>
							<?php include '../../php/admin-php-files/EDIT/dropdownPlay.php'; echo $options;?>
						</select>
						<input required type="text" name="date" min='2016-05-26'
						placeholder="Play Start Date"
						onfocus="this.type='date';this.focus();" onblur="if(this.value == '') this.type='text';"/>
						<input required type="text" name="date" min='2016-05-26'
						placeholder="Play End Date"
						onfocus="this.type='date';this.focus();" onblur="if(this.value == '') this.type='text';"/>
						<input type="text" min="08:00:00" max="18:00:00" class="form-control" placeholder="Play Time" onfocus="(this.type='time')" name="playtime" onblur="if(this.value == '') this.type='text';"/>
						<input type="text" class="form-control"
						placeholder="Choose Poster" onfocus="(this.type='file')" name="poster"/>
					</div>
					<input class="enter" type="submit" value="Edit"></input>
				</div>
			</div>
		</form>
		<form action="../../php/admin-php-files/DISPLAY/displayplay.php" method="post" accept-charset="utf-8"/>
			<div class="admin">
				<h5>Display Plays</h5>
				<div class="box">
					<div class="properties">
						<!---->
					</div>
					<input class="enter" type="submit" value="Display"></input>
				</div>
			</div>
		</form>
		<form action="../../php/admin-php-files/DELETE/deleteplay.php" method="post" accept-charset="utf-8"/>
			<div class="admin br2">
				<h5>Delete Play</h5>
				<div class="box">
					<div class="properties">
						<select required name="select-playwright">
							<option selected disabled>Select Playwright</option>
							<?php include '../../php/admin-php-files/EDIT/dropdownPlaywright.php'; echo $options;?>
						</select>
						<select required name="select-title">
							<option selected disabled>Select Title</option>
							<?php include '../../php/admin-php-files/EDIT/dropdownPlay.php'; echo $options;?>
						</select>
					</div>
					<input class="enter" type="submit" value="Delete"></input>
				</div>
			</div>
		</form>
		<!-- /////////////////////////////////// -->

		<footer>
			<p>`Maestro Productions</p>
			<p>japheth162@gmail.com : 09123456789</p>
			<p>Itanimulli</p>
		</footer>

	</div>

</body>

</html>
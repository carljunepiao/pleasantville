<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<title>The Pleasantville Theater</title>
	<link rel="icon" href="../../images/adminicon.jpg">
	<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Tangerine">
	<link rel="stylesheet" href="../../css/main.css">
	<link rel="stylesheet" href="../../css/admin.css">
</head>
<body>
	<nav class="main-navigation">
		<ul>
			<li><a href="../index.php">Home</a></li>
			<li><a href="../production.php">Production</a></li>
			<li><a href="../admin.php">Admin</a></li>
		</ul>
	</nav>
	<header>
		<h1>Play</h1>
		<img class="logo" src="../../images/adminicon.jpg" alt="PleasantvilleLogo">
	</header>

	<div class="container">
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
						<input required type="text" placeholder="playwright" name="playwright"></input>
						<input required type="text" placeholder="title" name="title"></input>
						<input required type="text" name="date"	 
						placeholder="play date"  
						onfocus="this.type='date';this.focus();" 
						onblur="if(this.value == '') this.type='text';"/>
						<input required="" type="text" class="form-control" placeholder="play time" onfocus="(this.type='time')" name="playtime"/>
						<input required="" type="text" class="form-control"
						placeholder="choose poster" onfocus="(this.type='file')" name="poster"/>
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
							<option selected disabled>select-playwright-id</option>
							<?php include '../../php/admin-php-files/EDIT/dropdownPlaywright.php'; echo $options;?>
						</select>
						<select required name="select-title">
							<option selected disabled>select-title</option>
							<?php include '../../php/admin-php-files/EDIT/dropdownPlay.php'; echo $options;?>
						</select>
						<input required type="text" name="date"	 
						placeholder="play date"  
						onfocus="this.type='date';this.focus();" 
						onblur="if(this.value == '') this.type='text';"/>
						<input type="text" class="form-control" placeholder="play time" onfocus="(this.type='time')" name="playtime"/>
						<input type="text" class="form-control"
						placeholder="choose poster" onfocus="(this.type='file')" name="poster"/>
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
							<option selected disabled>select-playwright</option>
							<?php include '../../php/admin-php-files/EDIT/dropdownPlaywright.php'; echo $options;?>
						</select>
						<select required name="select-title">
							<option selected disabled>select-title</option>
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
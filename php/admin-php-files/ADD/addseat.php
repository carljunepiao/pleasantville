<?php
	$host= 'localhost';
	$user= 'root';
	$pass='';
	$db= 'PleasantVille';

	$con = mysqli_connect($host,$user,$pass,$db);

	if($con)
	    echo 'connected successfully to PleasantVille database';

        $seat = $_POST['seat-no'];
	$prod = $_POST['select-production-no'];
	$title = $_POST['select-title'];

	$sql="INSERT INTO seats(SeatNo, ProdNo, Title) VALUES ('$seat', '$prod', '$title')";


	$query=mysqli_query($con,$sql);

	if($query){
	    echo 'Successfully added user.';
	}
	else{
	    echo 'A problem has been encountered. Pls check add user.';
	}
?>
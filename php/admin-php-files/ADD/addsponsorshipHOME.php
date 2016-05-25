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

        $sql="INSERT INTO seats(SeatNo, ProdNo, Taken) VALUES ('$seat', '$prod', 0)";
        
        $query=mysqli_query($con,$sql);
        
	if($query){
            header("Location: ../../../html/production.php");
	    echo 'Successfully added seat.';
	}
	else{
            header("Location: ../../../html/production.php");
	    echo 'A problem has been encountered. Pls check add seat.';
	}
?>
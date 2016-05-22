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

        echo $seat;
        echo $prod;
        $sql = "SELECT Title from production WHERE ProdNo = '$prod'";
        
        $query = $con->query($sql);
        
        if($query)
            echo 'The title has been taken. ';
        else
            echo 'A problem has been encountered on Title. ';
        
        $row = $query->fetch_assoc();
        
        $Title = $row["Title"];
        
        $sql2 = "SELECT Date from production WHERE ProdNo = '$prod'";
        
        $query2 = $con->query($sql2);

        if($query2)
            echo 'The date has been taken. ';
        else
            echo 'A problem has been encountered on Date. ';
        
        $row2 = $query2->fetch_assoc();
        
        $Date = $row2["Date"];
        
        echo $Date;

        $sql="INSERT INTO seats(SeatNo, ProdNo, Title, Date, Taken) VALUES ('$seat', '$prod', '$Title', '$Date', 0)";
        
        $query=mysqli_query($con,$sql);
        
	if($query){
	    echo 'Successfully added seat.';
	}
	else{
	    echo 'A problem has been encountered. Pls check add seat.';
	}
?>
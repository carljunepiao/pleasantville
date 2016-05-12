<?php

// php select option value from database

$hostname = "localhost";
$username = "root";
$password = "";
$databaseName = "pleasantville";

// connect to mysql database

$connect = mysqli_connect($hostname, $username, $password, $databaseName);

// mysql select query
$query = "SELECT UserID FROM `users`";

$result = mysqli_query($connect, $query);

$result2 = mysqli_query($connect, $query);

$options = "";

while($row2 = mysqli_fetch_array($result2))
{
    $options = $options."<option>$row2[0]</option>";
}
?>

<!DOCTYPE html>

<html>

    <head>

        <title> PHP SELECT OPTIONS FROM DATABASE </title>

        <meta charset="UTF-8">

        <meta name="viewport" content="width=device-width, initial-scale=1.0">

    </head>

    <body>

        <!--Method One-->

        <select name = "Shua">

            <?php while($row1 = mysqli_fetch_array($result)):;?>

            <option value = "<?php echo $row1[0]?>"><?php echo $row1[0]?></option>

            <?php endwhile;?>

        </select>
        
        <!-- Method Two -->

        <select>
            <?php echo $options;?>
        </select>

    </body>

</html>

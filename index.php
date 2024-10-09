<?php require_once 'core/dbConfig.php'; ?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
		table, th, td {
		  border:1px solid black;
		}
	</style>
</head>
<body>
<?php 

//$stmt = $pdo->prepare("SELECT * FROM Guests");

//if ($stmt->execute()) {
     //echo "string"; "<pre>";
     //print_r($stmt -> fetchALL());
     //echo"<pre>";

 //$stmt = $pdo->prepare("SELECT * FROM Reservations WHERE reservation_id = 1");

        //if ($stmt->execute()) {
            //echo "<pre>";
            //print_r($stmt->fetch());
            //echo "</pre>";
            //}

//$query = "INSERT INTO Guests(guest_id, first_name, last_name, email, phone_number, address) values(?,?,?)";

//$stmt = $pdo->prepare($query);

//$executeQuery = $stmt->execute(
        //[2,"Jane","Smith"]
   //);

    //if ($executeQuery) {
        echo "Query successful!";
   //};
    //else {
        //echo "Query failed";
    //}

 //$query = "DELETE FROM Reservations
             // WHERE reservation_id = 6 ";
    
     //$stmt = $pdo->prepare($query);
    
     //$executeQuery = $stmt->execute();
    
     //if ($executeQuery) {
        //echo "Deletion successful!";
     //}
     //else {
     //echo "Query failed";      

//$query ="UPDATE Guests
         //SET first_name = ?, last_name = ?
         //WHERE id = 1";

//$stmt = $pdo->prepare($query);

//$executeQuery = $stmt->execute(
  //["Mark", "Amodia"]
//);

//if ($executeQuery)    {
    //echo "udpate successful!"
//}

//else  {
    //echo "Query failed";
//}
 ?>
    
    <table>
        <tr>
            <th>Reservation</th>
            <th>Services</th>
        </tr>
        <?php foreach ($Services as $row) { ?>
        <tr>
            <td><?php echo $row['service_id']; ?></td>
            <td><?php echo $row['service_name']; ?></td>
            <td><?php echo $row['service_price']; ?></td>
        </tr>
        <?php } ?>
    </table> 
</body>
</html>

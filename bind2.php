<?php

include('db.php');

$sql = "SELECT fnum, dTime FROM Flight " .
       "WHERE dAirPort = :code AND fName = :name";
$statement = $pdo->prepare($sql);
$statement->bindValue("code", "PEK");
$statement->bindValue("name", "China Airlines");
$statement->execute();

while ($row = $statement->fetch()) {
   echo "<p>Flight $row[fnum] departs at $row[dTime]</p>";
}
?>

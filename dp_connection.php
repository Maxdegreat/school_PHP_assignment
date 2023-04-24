<?php

$dsn = "mysql:host=localhost;dbname=ebooklibrary";
$username = "root";
$password = "";
$pdo = new PDO($dsn, $username, $password);
   
// Use $pdo to perform database operations
echo "Connected Successfully";

$pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

?>
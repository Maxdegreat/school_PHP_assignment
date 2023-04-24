
<?php

$dsn = "mysql:host=localhost;dbname=ebooklibrary";
$username = "root";
$password = "";
$pdo = new PDO($dsn, $username, $password);
   
// Use $pdo to perform database operations
echo "Connected Successfully", "<br>";

$pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
      
// Check if student exists
$sql = "SELECT * FROM student WHERE stuid = ?";
$statement = $pdo->prepare($sql);
$statement->bindValue(1, $_POST["stuid"]);
$statement->execute();

if ($statement->rowCount() > 0) {
  // Student already exists
  header("Location: show_books.php");
  exit(); // Make sure to exit after redirecting
} else {
  // Create student
  $sql = "INSERT INTO student (stuid, password) VALUES (?,?)";
  $statement = $pdo->prepare($sql);
  $statement->bindValue(1, $_POST["stuid"]);
  $statement->bindValue(2, $_POST["password"]);
  $statement->execute();
  
  echo "Student created successfully";
  // nav to pick course screen
  header("Location: pick_course.php");
  exit(); // Make sure to exit after redirecting

}


?>

<script>
    function goToBook() {
        window.location.href = 'https://localhost/test/book_view.php';
    }
</script>

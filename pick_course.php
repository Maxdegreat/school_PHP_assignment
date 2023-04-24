<?php
include('dp_connection.php');

// TODO: PASS STUID FROM PREV PAGE
// $statment = $pdo->query("select book_id from studendt where stuid is 123")
// var = $statment-> get results and display the book as a button in php 

$statement = $pdo->query("SELECT book_id FROM student WHERE stuid = 123");
$result = $statement->fetch(PDO::FETCH_ASSOC);

if ($result) {
   $book_id = $result['book_id'];
   echo "<button onclick='goToBook()'>$book_id</button>";
} else {
    echo "No book found for student with ID 123";
}

?>

<script>
    function goToBook() {
        window.location.href = 'https://localhost/test/book_view.php';
    }
</script>
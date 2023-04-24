<?php
include('dp_connection.php');

// TODO: PASS STUID FROM PREV PAGE
// $statment = $pdo->query("select bookId from studendt where stuid is 123")
// var = $statment-> get results and display the book as a button in php 

$statement = $pdo->query("SELECT bookid FROM student WHERE stuid = 123");
$result = $statement->fetch();

if ($result) {
   $bookId = $result['bookid'];
   echo "<br>";
   echo "<button onclick='goToBook($bookId)'>Class Book: $bookId</button>";
} else {
    echo "No book found for student with ID 123";
}

?>

<script>
function goToBook(queryId) {
    if (queryId !== null) {
        window.location.href = 'http://localhost/test/book_view.php?bookid=' + queryId;
    } else {
        window.location.href = 'http://localhost/test/book_view.php';
    }
}
</script>
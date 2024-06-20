<?php
include 'db.php';
session_start();
if (!isset($_SESSION['user_id'])) {
    header("Location: login.php");
    exit();
}

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $book_id = $_POST['book_id'];
    $user_id = $_SESSION['user_id'];
    $borrow_date = date('Y-m-d');

    $sql = "INSERT INTO BorrowRecords (user_id, book_id, borrow_date) VALUES ('$user_id', '$book_id', '$borrow_date')";
    if ($conn->query($sql) === TRUE) {
        $sql = "UPDATE Books SET available = 0 WHERE book_id = '$book_id'";
        $conn->query($sql);
        echo "借閱成功";
    } else {
        echo "借閱失敗: " . $conn->error;
    }
}

$sql = "SELECT * FROM Books WHERE available = 1";
$result = $conn->query($sql);
?>

<!DOCTYPE html>
<html>
<head>
    <title>借閱圖書</title>
    <link rel="stylesheet" type="text/css" href="styles.css">
</head>
<body>
    <h2>借閱圖書</h2>
    <form method="post" action="">
        <label for="book_id">選擇圖書:</label><br>
        <select id="book_id" name="book_id">
            <?php while ($row = $result->fetch_assoc()): ?>
            <option value="<?php echo $row['book_id']; ?>"><?php echo $row['title']; ?></option>
            <?php endwhile; ?>
        </select><br><br>
        <input type="submit" value="借閱">
    </form>
</body>
</html>
<?php $conn->close(); ?>

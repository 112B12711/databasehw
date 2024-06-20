<?php
include 'db.php';
session_start();
if (!isset($_SESSION['user_id'])) {
    header("Location: login.php");
    exit();
}

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $record_id = $_POST['record_id'];
    $return_date = date('Y-m-d');

    $sql = "UPDATE BorrowRecords SET return_date = '$return_date' WHERE record_id = '$record_id'";
    if ($conn->query($sql) === TRUE) {
        $sql = "UPDATE Books SET available = 1 WHERE book_id = (SELECT book_id FROM BorrowRecords WHERE record_id = '$record_id')";
        $conn->query($sql);
        echo "還書成功";
    } else {
        echo "還書失敗: " . $conn->error;
    }
}

$user_id = $_SESSION['user_id'];
$sql = "SELECT * FROM BorrowRecords WHERE user_id = '$user_id' AND return_date IS NULL";
$result = $conn->query($sql);
?>

<!DOCTYPE html>
<html>
<head>
    <title>還書</title>
    <link rel="stylesheet" type="text/css" href="styles.css">
</head>
<body>
    <h2>還書</h2>
    <form method="post" action="">
        <label for="record_id">選擇借閱記錄:</label><br>
        <select id="record_id" name="record_id">
            <?php while ($row = $result->fetch_assoc()): ?>
            <option value="<?php echo $row['record_id']; ?>"><?php echo $row['book_id']; ?> - 借閱日期: <?php echo $row['borrow_date']; ?></option>
            <?php endwhile; ?>
        </select><br><br>
        <input type="submit" value="還書">
    </form>
</body>
</html>
<?php $conn->close(); ?>

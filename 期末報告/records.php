<?php
include 'db.php';
session_start();
if (!isset($_SESSION['user_id'])) {
    header("Location: login.php");
    exit();
}

$user_id = $_SESSION['user_id'];
$sql = "SELECT * FROM BorrowRecords WHERE user_id = '$user_id'";
$result = $conn->query($sql);
?>

<!DOCTYPE html>
<html>
<head>
    <title>借閱記錄</title>
    <link rel="stylesheet" type="text/css" href="styles.css">
</head>
<body>
    <h2>借閱記錄</h2>
    <table>
        <tr>
            <th>書籍ID</th>
            <th>借閱日期</th>
            <th>還書日期</th>
        </tr>
        <?php while ($row = $result->fetch_assoc()): ?>
        <tr>
            <td><?php echo $row['book_id']; ?></td>
            <td><?php echo $row['borrow_date']; ?></td>
            <td><?php echo $row['return_date'] ? $row['return_date'] : '未還書'; ?></td>
        </tr>
        <?php endwhile; ?>
    </table>
</body>
</html>
<?php $conn->close(); ?>

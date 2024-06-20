<?php
include 'db.php';

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $username = $_POST['username'];
    $password = password_hash($_POST['password'], PASSWORD_DEFAULT);
    $email = $_POST['email'];

    $sql = "INSERT INTO Users (username, password, email) VALUES ('$username', '$password', '$email')";

    if ($conn->query($sql) === TRUE) {
        echo "註冊成功，請<a href='login.php'>登入</a>";
    } else {
        echo "Error: " . $sql . "<br>" . $conn->error;
    }

    $conn->close();
}
?>

<!DOCTYPE html>
<html lang="zh-TW">
<head>
    <meta charset="UTF-8">
    <title>註冊</title>
    <link rel="stylesheet" type="text/css" href="styles.css">
</head>
<body>
    <header>
        <h1>圖書借閱系統</h1>
    </header>
    <main>
        <h2>註冊</h2>
        <form method="post" action="">
            <label for="username">使用者名稱:</label><br>
            <input type="text" id="username" name="username" required><br>
            <label for="password">密碼:</label><br>
            <input type="password" id="password" name="password" required><br>
            <label for="email">電子郵件:</label><br>
            <input type="email" id="email" name="email" required><br><br>
            <input type="submit" value="註冊">
        </form>
    </main>
    <footer>
        <p>圖書借閱系統 &copy; 2024</p>
    </footer>
</body>
</html>

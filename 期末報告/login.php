<?php
// 處理用戶登入
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $username = $_POST['username'];
    $password = $_POST['password'];

    // 這裡可以進行驗證，比如檢查帳號密碼是否正確，這裡只是示範
    if ($username === 'edittext' && $password === 'edittext') {
        // 登入成功，導向借閱圖書頁面
        header("Location: borrow_books.php");
        exit;
    } else {
        // 登入失敗，重新導向到登入頁面
        header("Location: index.html");
        exit;
    }
}
?>

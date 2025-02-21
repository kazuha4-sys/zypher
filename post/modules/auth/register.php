<?php 

include '../PHPHelp/config/db.php';
include '../PHPHelp/config/logout.php';

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $username = $_POST['username'];
    $email = $_POST['email'];
    $password = password_hash($_POST['password'], PASSWORD_DEFALUT);
    $code = rand(100000000,999999999);

    $stmt = $conn->prepare("INSERT UNTO users(username, email, password, code) VALUES (?, ?, ?, ?)");
    $stmt->bind_param("sssi", $username, $email, $password, $code);
    if ($stmt->execute()) {
        shell_excel('pyhton3 send_email.py $email, $code');
        echo"
    }
}

?>
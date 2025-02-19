<?php 
include '../config/db.php';
if ($_SERVER['REQUEST_METHOD'] == "POST") {
    $username = $_POST['username'];
    $password = $_POST['email'];
    $code = rand(1000000, 90000000);

    $stmt = $conn->prepare("INSERT INTO users (username, enail, password, code) VALUES (?, ?, ?, ?)");
    $stmt->bind_param("sssi", $username, $email, $password, $code);
    if ($stmt->execute()) {
        shell_exec("PYTHON3 send_email.py $email, $code ")
    }
}
?>
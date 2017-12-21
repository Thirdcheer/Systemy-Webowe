<?php

session_start();
$_SESSION['logged'] = false;
$_SESSION['logout'] = false;

$db = mysqli_connect("localhost", "root", "root", "default_schema");
if (mysqli_connect_errno()) {
    printf("Connect failed: %s\n", mysqli_connect_error());
    exit();
}

if (isset($_POST['submitLogin'])) {
    $username = $_POST['login'];
    $password = $_POST['password'];

    $escaped_username = $db->real_escape_string($username);

    $query = "select * from user where username = '$escaped_username'";
    $result = $db->query($query);
    $db->close();

    if ($result->num_rows > 0) {
        $row = $result->fetch_assoc();
        $hashed_password = $row['password'];

        if (password_verify($password, $hashed_password)) {
            $_SESSION['logged'] = true;
            $_SESSION['login'] = $username;
            $_SESSION['password'] = '';
            $_SESSION['name'] = $row['name'];
            $_SESSION['surname'] = $row['surname'];
            $_SESSION['month_of_bith'] = $row['month_of_birth'];
            $_SESSION['phone'] = $row['phone'];
            $_SESSION['email'] = $row['email'];

            echo 'You have successfully logged in';

            if (strpos($_SERVER['HTTP_REFERER'], 'not_logged.php') !== false) {
                header("Location: survey.php");
            } else {
                header("Location: {$_SERVER['HTTP_REFERER']}");
            }
        }
    }

    if (!$_SESSION['logged']) {
        print('Wrong login or password');
        header("Location: {$_SERVER['HTTP_REFERER']}");
    }
}

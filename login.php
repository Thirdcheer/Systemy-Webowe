<?php

session_start();
$_SESSION['logged'] = false;
$_SESSION['logout'] = false;

$creds = array();
$creds['admin'] = 'admin';
$creds['randomuser'] = 'random';

if (isset($_POST['submitLogin'])) {
    $_SESSION['login'] = $_POST['login'];
    $_SESSION['password'] = $_POST['password'];

    if (array_key_exists($_SESSION['login'], $creds) && $creds[$_SESSION['login']] == $_SESSION['password']) {
        $_SESSION['logged'] = true;
        print('You have successfully logged in');
        if(strpos($_SERVER['HTTP_REFERER'], 'not_logged.php') !== false){
            header("Location: survey.php");
        }
        else{
            echo($_SERVER['HTTP_REFERER']);
            header("Location: {$_SERVER['HTTP_REFERER']}");
        }
    } else {
        $_SESSION['logged'] = false;
        print('Wrong login or password');
        header("Location: {$_SERVER['HTTP_REFERER']}");
    }
}

?>
<!DOCTYPE html>
<html lang="en">
<script src="client-side.js" type="text/javascript"></script>
<head>
    <link rel="stylesheet" type="text/css" href="style.css"/>
    <meta charset="UTF-8">
    <meta name="description"
          content="Best place in the web where you can find modern art created by our users. Join now for free and share your content!">
    <meta name="keywords" content="Art, Beauty, Photography, Gallery, Graphics, Wallpapers, Drawing">
    <meta name="author" content="Karolina Malanowska, Michał Regulski">
    <title>Contact</title>
    <?php
    session_start();
    if (isset($_COOKIE['theme'])) {
        if ($_COOKIE['theme'] == 'light') {
            echo '<script>setLightTheme();</script>';
        } else if ($_COOKIE['theme'] == 'dark') {
            echo '<script>setDarkTheme();</script>';
        }
    } else {
        setcookie('theme', 'dark', 0, "/");
    }
    ?>
</head>
<body class="contact-page">
<header class="header">
    <div class="header__container">
        <a href="index.php">
            <img id="logo" src="images/logo.png" alt="Logo"/>
        </a>
        <div class="login-box">
            <?php
            if (!isset($_SESSION['logged']) || isset($_SESSION['logged']) && $_SESSION['logged'] == false) {
                echo '<h2>Log in</h2>';
                echo '<form class="block" id="loginform" method="POST" action="login.php">
                    <input id="login" placeholder="Username/E-mail" name="login" type="text" autocomplete="on" tabindex="1">
                    <input id="password" placeholder="Password" name="password" type="password" tabindex="2">
                    <button id="login-button" type="submit" name="submitLogin" tabindex="3">Log in </button>
                    </form>';
            } else if (isset($_SESSION['logged']) && $_SESSION['logged'] == true) {
                $username = $_SESSION['login'];
                echo "<h2>You are logged as: $username</h2>";
                echo '<a href=index.php?logout=true id="logout" name="logout">Logout</a>';
            }

            if (isset($_GET['logout'])) {
                $_SESSION['login'] = "";
                $_SESSION['password'] = "";

                if ($_SESSION['logged'] == true) {
                    unset($_SESSION['logged']);
                    unset($_POST['logout']);
                    header('Location: contact.php');
                }
            }
            ?>
            <button onclick="changeTheme()">Change style</button>
        </div>
    </div>
    <nav id="header__menu">
        <ul>
            <li><a href="gallery.php">Gallery</a></li>
            <li><a href="about.php">About</a></li>
            <li><a href="contact.php">Contact</a></li>
            <li><a href="sitemap.php">Sitemap</a></li>
            <li><a href="survey.php">Survey</a></li>
            <li><a href="#">Dropdown</a>
                <ul>
                    <li><a href="#">Sub 1</a></li>
                    <li><a href="#">Sub 2</a></li>
                    <li><a href="#">Sub 3</a>
                        <ul>
                            <li><a href="#">Subsub 1</a></li>
                            <li><a href="#">Subsub 2</a></li>
                        </ul>
                    </li>
                </ul>
            </li>
        </ul>
    </nav>
</header>

<div class="main-content">
    <hr>
    <h4 class="centered-text">Best place in the web where you can find modern art created by our users. Join now for
        free and share your
        content!</h4>
    <div class="mail-to" >
        <hr>
        <a href="mailto:someone@example.com" style="color:plum">someone@example.com</a>
        <button id="Contact" onclick=randomNumberGenerator()>Contact</button>
    </div>
    <div class="promotion">
        <hr>
        <p>Check out our website! <a href="register.php" id="register-link">Register now!</a></p>
    </div>
    <hr>
</div>
<div id="github-banner">
    <a href="https://github.com/Thirdcheer/Systemy-webowe">Fork me on GitHub</a>
</div>
<footer class="main-footer">
    <div class="bottom-footer">
        <p>ArtIsHere &#169; 2017</p>
    </div>
</footer>
</body>
</html>

<!DOCTYPE html>
<html lang="en">
<script src="client-side.js" type="text/javascript"></script>
<script src="DOM5.js" type="text/javascript"></script>
<head>
    <link rel="stylesheet" type="text/css" href="style.css"/>
    <meta charset="UTF-8">
    <meta name="description"
          content="Best place in the web where you can find modern art created by our users. Join now for free and share your content!">
    <meta name="keywords" content="Art, Beauty, Photography, Gallery, Graphics, Wallpapers, Drawing">
    <meta name="author" content="Karolina Malanowska, Michał Regulski">
    <title>Register</title>
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
<body>
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
                    header('Location: register.php');
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
    <?php

    $logged_in = isset($_SESSION['logged']) && $_SESSION['logged'] == true;

    if (!$logged_in) {
        echo '
            <h4 class="centered-text">Best place in the web where you can find modern art created by our users. Join now for free and share your content!</h4>
            <hr>
            <div id="user-form">
            <h3>Sign up now for more awesome content!</h3>
        ';
    } ?>

    <form id="register_form" method="POST" autocomplete="on" action="">
        <fieldset>
            <legend>Personal data</legend>
            <input onfocus="focuser(1)" onblur="blurer()" type="text" name="firstname" title="Name" autofocus required <?php if ($logged_in) echo 'value = "' . $_SESSION['name'] . '" ' ?>>Name<br>
            <input onfocus="focuser(2)" onblur="blurer()" type="text" name="lastname" title="Surname" required <?php if ($logged_in) echo 'value = "' . $_SESSION['surname'] . '" ' ?>>Surname<br>
            <input onfocus="focuser(3)" onblur="blurer()" type="text" name="nick" title="Nick" <?php if ($logged_in) echo 'value = "' . $_SESSION['login'] . '" ' ?> readonly>Nick<br>
            <input onfocus="focuser(4)" onblur="blurer()" type="password" name="pass" title="Password">Password<br>
            <input list="month" name="month" title="Month of birth" <?php if ($logged_in) echo 'value = "' . $_SESSION['month_of_birth'] . '"' ?>>Month of birth<br>
            <datalist id="month">
                <option>Styczeń</option>
                <option>Luty</option>
                <option>Marzec</option>
                <option>Kwiecień</option>
                <option>Maj</option>
                <option>Czerwiec</option>
                <option>Lipiec</option>
                <option>Sierpień</option>
                <option>Wrzesień</option>
                <option>Październik</option>
                <option>Listopad</option>
                <option>Grudzień</option>
            </datalist>
            <input type="email" name="email" title="E-mail" required <?php if ($logged_in) echo 'value = "' . $_SESSION['email'] . '" ' ?>>E-mail<br>
            <input type="tel" name="tel" title="Phone number (9 digits)" pattern="[0-9]{9}" <?php if ($logged_in) echo 'value = "' . $_SESSION['phone'] . '" ' ?>>Phone number (9 digits)
        </fieldset>
        <br>

        <?php
        if (!$logged_in) {
            echo '
            <fieldset>
                <legend>Profile data</legend>
                <b>What type of art do you like the most?</b>
                <br>
                <select name="Art types" title="Art types">
                    <optgroup label="Traditional art">
                        <option value="Paper">On paper</option>
                        <option value="Canvas">On canvas</option>
                        <option value="Applied">Applied art</option>
                    </optgroup>
    
                    <optgroup label="Digital art">
                        <option value="Paint">Digital painting</option>
                        <option value="Raw">Raw graphics</option>
                        <option value="Vector">Vector graphics</option>
                    </optgroup>
    
                    <optgroup label="Animation">
                        <option value="Traditional">Traditional animation</option>
                        <option value="Digital">Digital animation</option>
                    </optgroup>
                </select><br><br>
    
                <b>Who are you?</b><br>
    
                <input type="radio" name="artist" title="Artist">Artist<br>
                <input type="radio" name="student" title="Student">Student<br>
                <input type="radio" name="teacher" title="Teacher">Teacher<br>
                <input type="radio" name="random" title="Random person">Random person<br>
                <br>
    
                <b>Tell something more about you</b><br>
                <textarea title="Description" maxlength="200">Description up to 200 chars</textarea><br>
                <br>
                <input type="checkbox" checked="checked" name="mentoring"
                       title="I want to participate in ArtIsHere mentoring program">
                <b>I want to participate in ArtIsHere mentoring program</b>
            </fieldset>';
        }
        ?>

        <input class="button" onclick="submitter()" id="submit-btn" type="submit" value="Submit">
        <input class="button" onclick="resetter()" type="reset" value="Reset"><br>
    </form>
</div>

<?php
if ($logged_in) {
    echo '<div class="promotion">
    <p>Check out our website! <a href="register.php" id="register-link">Register now!</a></p>
</div>';
}
?>

<footer class="main-footer" id="main-footer">
    <div class="bottom-footer">
        <p>ArtIsHere &#169; 2017</p>
    </div>
</footer>
</body>
</html>

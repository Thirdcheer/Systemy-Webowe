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
    <title>Survey</title>
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
            <h2>Log in</h2>
            <input id="login" placeholder="Username/E-mail" name="login" type="text" autocomplete="on" tabindex="1">
            <input id="password" placeholder="Password" name="password" type="password" tabindex="2">
            <button id="login-button" type="submit" tabindex="3">
                Log In
            </button>
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

    const BLACK = "#000000";
    const WHITE = "#FFFFFF";
    const RED = "#FF0000";
    const GREEN = "#00FF00";
    const BLUE = "#0000FF";

    const COLORS = array(
        BLACK => "BLACK",
        WHITE => "WHITE",
        RED => "RED",
        GREEN => "GREEN",
        BLUE => "BLUE"
    );

    function processResponse() {
        if ($_SERVER["REQUEST_METHOD"] == "POST") {
            $artist = $_POST['artist'];
            $favcolor = $_POST['favcolor'];
            $birthmonth = $_POST['birthmonth'];
            $satisfaction = $_POST['satisfaction'];
            $homepage = $_POST['homepage'];
            $types_str = "";
            $categories_str = "";

            if (!preg_match("/^#{1}[a-fA-F0-9]{6}$/", $favcolor)) {
                throw new InvalidArgumentException("Color is not in HEX");
            } else {
                $favcolor = checkColor($favcolor);
            }

            if (!empty($homepage) && !preg_match("/\b(?:(?:https?|ftp):\/\/|www\.)[-a-z0-9+&@#\/%?=~_|!:,.;]*[-a-z0-9+&@#\/%=~_|]/i", $homepage)) {
                throw new InvalidArgumentException("Homepage address is not a valid URL");
            }

            if (empty($artist)) {
                throw new InvalidArgumentException("Artist is empty");
            }

            if (empty($birthmonth)) {
                throw new InvalidArgumentException("Birthmonth is empty");
            }

            if (isset($_POST['types']) && isset($_POST['categories'])) {
                $types = $_POST['types'];
                $categories = $_POST['categories'];
            
                foreach ($types as $type) {
                    $types_str .= "$type, ";
                }

                foreach ($categories as $category) {
                    $categories_str .= "$category, ";
                }

                $types_str = rtrim($types_str, ", ");
                $categories_str = rtrim($categories_str, ", ");
            }

            echo "<h1>Thank you for your time</h1><br>";
            echo "<h2>Your responses: </h2>";
            echo "<table id='result-table'>";
            echo "<tr><th>Your favourite artist:</th><th>$artist</th></tr>";
            echo "<tr><th>Your favourite color:</th><th>$favcolor</th></tr>";
            echo "<tr><th>Your birthmonth:</th><th>$birthmonth</th></tr>";
            echo "<tr><th>Your satisfaction:</th><th>$satisfaction</th></tr>";
            echo "<tr><th>Homepage:</th><th>$homepage</th></tr>";
            echo "<tr><th>Types:</th><th>$types_str</th></tr>";
            echo "<tr><th>Categories:</th><th>$categories_str</th></tr>";
            echo "</table>";
        }
    }

    function checkColor($color) {
        switch (strtoupper($color)) {
            case WHITE:
                return COLORS[WHITE];
            case BLACK:
                return COLORS[BLACK];
            case RED:
                return COLORS[RED];
            case GREEN:
                return COLORS[GREEN];
            case BLUE:
                return COLORS[BLUE];
            default:
                return $color;
        }
    }

    try {
        processResponse();
    } catch (InvalidArgumentException $e) {
        echo "Something went wrong. Exception: " . $e->getMessage();
    }
    echo "<br><br>";
    echo "Sent from " . $_SERVER['REMOTE_ADDR'] . " at " . gmdate("r", $_SERVER['REQUEST_TIME']);

    ?>
</div>

<footer class="main-footer">
    <div class="bottom-footer">
        <p>ArtIsHere &#169; 2017</p>
    </div>
</footer>
</body>
</html>

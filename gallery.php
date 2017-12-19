<!DOCTYPE html>
<html lang="en">
<script src="client-side.js" type="text/javascript"></script>
<script src="DOM2.js" type="text/javascript"></script>
<head>
    <link rel="stylesheet" type="text/css" href="style.css"/>
    <meta charset="UTF-8">
    <meta name="description"
          content="Best place in the web where you can find modern art created by our users. Join now for free and share your content!">
    <meta name="keywords" content="Art, Beauty, Photography, Gallery, Graphics, Wallpapers, Drawing">
    <meta name="author" content="Karolina Malanowska, Michał Regulski">
    <title>Gallery</title>
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
                    header('Location: gallery.php');
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
    if (!isset($_SESSION['logged']) || isset($_SESSION['logged']) && $_SESSION['logged'] == false) {
             echo ' <p style="color:red"> Log in to get more options </p> ';
    }
    else if (isset($_SESSION['logged']) && $_SESSION['logged'] == true) {
                echo '<div id="statistics" >
                <button id="images" onclick="statistics_images()">Obrazki</button>
                <button onclick="statistics_links()">Linki</button>
                <button onclick="statistics_forms()">Formularze</button>
                <button onclick="statistics_anchor()">Kotwice</button>
                <button onclick="statistics_item()">Podmień zdjęcie</button>
                </div>';
        }
    ?>
    <div class="gallery">
        <div class="picture-show">
            <img id="first" src="images/gallery_images/beauty.jpg" alt="beauty" width="600" height="400">
            <div class="note">
                Rating:
                <meter value="0.7">Rating</meter>
            </div>
        </div>

        <div class="picture-show">
            <img id="second" src="images/gallery_images/css.jpeg" alt="css" width="600" height="400">
            <div class="note">
                Rating:
                <meter value="1.0">Rating</meter>
            </div>
        </div>

        <div class="picture-show">
            <img src="images/gallery_images/dandelion.jpeg" alt="dandelion" width="600" height="400">
            <div class="note">
                Rating:
                <meter value="0.5">Rating</meter>
            </div>
        </div>

        <div class="picture-show">
            <img src="images/gallery_images/dodge.jpg" alt="dodge" width="600" height="400">
            <div class="note">
                Rating:
                <meter value="0.9">Rating</meter>
            </div>
        </div>

        <div class="picture-show">
            <img src="images/gallery_images/einstein.jpg" alt="einstein" width="600" height="400">
            <div class="note">
                Rating:
                <meter value="0.7">Rating</meter>
            </div>
        </div>

        <div class="picture-show">
            <img src="images/gallery_images/horus.jpg" alt="horus" width="600" height="400">
            <div class="note">
                Rating:
                <meter value="0.8">Rating</meter>
            </div>
        </div>

        <div class="picture-show">
            <img src="images/gallery_images/origami-boats.jpeg" alt="origami" width="600" height="400">
            <div class="note">
                Rating:
                <meter value="0.1">Rating</meter>
            </div>
        </div>

        <div class="picture-show">
            <img src="images/gallery_images/spiral-glass.jpeg" alt="spiral" width="600" height="400">
            <div class="note">
                Rating:
                <meter value="0.3">Rating</meter>
            </div>
        </div>

        <div class="picture-show">
            <img src="images/gallery_images/white-ornaments.jpeg" alt="ornaments" width="600" height="400">
            <div class="note">
                Rating:
                <meter value="0.2">Rating</meter>
            </div>
        </div>
    </div>

</div>


<footer class="main-footer">
    <div class="bottom-footer">
        <p>ArtIsHere &#169; 2017</p>
    </div>
</footer>
</body>
</html>
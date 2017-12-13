<!DOCTYPE html>
<html lang="en">
<script src="http://code.jquery.com/jquery-1.7.1.min.js" type="text/javascript"></script>
<script src="client-side.js" type="text/javascript"></script>
<script src="DOM3.js" type="text/javascript"></script>

<head onmouseover="keyCode()">
    <link rel="stylesheet" type="text/css" href="style.css" />
    <meta charset="UTF-8">
    <meta name="description" content="Best place in the web where you can find modern art created by our users. Join now for free and share your content!">
    <meta name="keywords" content="Art, Beauty, Photography, Gallery, Graphics, Wallpapers, Drawing">
    <meta name="author" content="Karolina Malanowska, Michał Regulski">
    
    <?php
    session_start();
    if(isset($_COOKIE['theme'])) {
        if($_COOKIE['theme'] == 'light'){
            echo '<script>setLightTheme();</script>'; 
        }
        else if($_COOKIE['theme'] == 'dark'){
            echo '<script>setDarkTheme();</script>';
        }
    }
    else{
        setcookie('theme', 'dark',time() + 60, "/web");
    } 
    ?>
</head>

<body onmouseover="shiftIsPressed(event)">
    <header class="header">
        <div class="header__container">
            <a href="index.php">
                <img id="logo" src="images/logo.png" alt="Logo" />
            </a>
            <div class="login-box">
                
                <?php 
                if(!isset($_SESSION['logged'])) {
                    echo '<h2>Log in</h2>';
                    echo '<form class="block" id="loginform" method="POST" action="login.php">
                    <input id="login" placeholder="Username/E-mail" name="login" type="text" autocomplete="on" tabindex="1">
                    <input id="password" placeholder="Password" name="password" type="password" tabindex="2">
                    <button id="login-button" type="submit" name="submitLogin" tabindex="3">Log in </button>
                    </form>';
                }
                if(isset($_SESSION['logged']) && $_SESSION['logged'] == false) { 
                    echo '<h2>Wrong login or password</h2>';
                    echo '<form class="block" id="loginform" method="POST" action="login.php">
                    <input id="login" placeholder="Username/E-mail" name="login" type="text" autocomplete="on" tabindex="1">
                    <input id="password" placeholder="Password" name="password" type="password" tabindex="2">
                    <button id="login-button" type="submit" name="submitLogin" tabindex="3">Log in </button>
                    </form>';
                }
                if(isset($_SESSION['logged']) && $_SESSION['logged'] == true) { 
                    echo '<h2>You are logged as: ';
                    echo $_SESSION['login'];
                    echo '</h2>';      
                    echo '<a href=index.php?logout=true id="logout" name="logout">Logout</a>';       
                }

                if(isset($_GET['logout'])){
                    $_SESSION['login'] = "";
                    $_SESSION['password'] = "";
                
                   if($_SESSION['logged'] == true) {
                    unset($_SESSION['logged']);
                    unset($_POST['logout']);
                    header('Location: index.php');
                   }
                } 
                ?>
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

    <div class="main-content" onmouseover="ctrIsPressed(event)">
        <h4 class="centered-text">Best place in the web where you can find modern art created by our users. Join now for free and share your content!
        </h4>
        <hr>
        <div class="small-gallery" onclick="altIsPressed(event)">
            <div class="gallery-element"><span id="gallery-element-1"></span></div>
            <div class="gallery-element"><span id="gallery-element-2"></span></div>
            <div class="gallery-element"><span id="gallery-element-3"></span></div>
        </div>
        <hr>
        <div class="top-artists">
            <h1 id="centered-text">Top artists</h1>
            <table>
                <tr>
                    <th>
                        <mark>Traditional art</mark>
                    </th>
                    <th>
                        <mark>Digital art</mark>
                    </th>
                    <th>
                        <mark>Animation</mark>
                    </th>
                </tr>
                <tr>
                    <td>Zdzisław Kropka</td>
                    <td>Stefan Kopytko</td>
                    <td>Waldemar Gąbka</td>
                </tr>
                <tr>
                    <td>Andrzej Kochanek</td>
                    <td>Michał Pietraszko</td>
                    <td>Barbara Mazur</td>
                </tr>
            </table>
        </div>
        <div class="promotion" onmouseover="checkOutChange()">
            <hr>
            <p id="checkout">Check out our website! <a href="register.html" id="register-link">Register now!</a></p>
        </div>
        <hr>
    </div>

    <footer class="main-footer">
        <div class="bottom-footer">
            <p>ArtIsHere &#169;
                <script>
                    placeDate();
                    magicNumber = 1;
                </script>
            </p>
        </div>
    </footer>
</body>
</html>
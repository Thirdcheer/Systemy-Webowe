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
</head>
<body>
<header class="header">
    <div class="header__container">
        <a href="index.php">
            <img id="logo" src="images/logo.png" alt="Logo"/>
        </a>
        <div class="login-box">
        <?php 
        session_start();
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
                    header('Location: survey.php');
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

<div class="main-content">
    <form method="POST" action="survey-form.php" autocomplete="on" id="survey-form">
        <fieldset>
            <legend>Tell us your preferences</legend>
            Who is your favourite top artist?<br>
            <select name="artist">
                <option value="Zdzisław Kropka">Zdzisław Kropka</option>
                <option value="Stefan Kopytko">Stefan Kopytko</option>
                <option value="Waldemar Gąbka">Waldemar Gąbka</option>
                <option value="Andrzej Kochanek">Andrzej Kochanek</option>
                <option value="Michał Pietraszko">Michał Pietraszko</option>
                <option value="Barbara Mazur">Barbara Mazur</option>
            </select><br>
            <br>
            What is your favourite colour?<br>
            <input type="color" name="favcolor" title="Choose a color"><br>
            <br>
            In which month were you born?<br>
            <input type="month" name="birthmonth" title="Choose your month of your birth"><br>
            <br>
            How much do you like this page?<br>
            <input type="range" name="satisfaction" title="Satisfaction" min="0" max="10"><br>
            <br>
            Do you have your own website?<br>
            <input type="url" name="homepage" title="Type in your URL" placeholder="Write url here"><br>
            <br>
            Choose types you are into:<br>
            <input type="checkbox" name="types[]" value="ceramics">Ceramics<br>
            <input type="checkbox" name="types[]" value="drawing">Drawing<br>
            <input type="checkbox" name="types[]" value="photography">Photography<br>
            <input type="checkbox" name="types[]" value="sculpture">Sculpture<br>
            <input type="checkbox" name="types[]" value="video">Video<br>
            <br>
            Choose categories you want to follow:<br>
            <input type="checkbox" name="categories[]" value="abstraction">Abstraction<br>
            <input type="checkbox" name="categories[]" value="architecture">Architecture<br>
            <input type="checkbox" name="categories[]" value="fashion">Fashion<br>
            <input type="checkbox" name="categories[]" value="nature">Nature<br>
            <br>
            How much time you spend on creating art? (per week):<br>
            <input type="radio" name="time" value="0-4">0-4<br>
            <input type="radio" name="time" value="5-8">5-8<br>
            <input type="radio" name="time" value="9-16">9-16<br>
            <input type="radio" name="time" value="16+">16+<br>
            <br>
            <input type="submit" id="survey-button"><br>
        </fieldset>
    </form>

    <form>
        <fieldset>
            <legend>Search</legend>
            <input type="search" name="search" class="search-engine" disabled="disabled" placeholder="Test our search engine!">
            <input type="submit" name="Search">
        </fieldset>
    </form>
</div>

<footer class="main-footer">
    <div class="bottom-footer">
        <p>ArtIsHere &#169; 2017</p>
    </div>
</footer>
</body>
</html>


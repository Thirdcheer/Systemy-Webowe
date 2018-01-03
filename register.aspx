<% @Page Language="C#" AutoEventWireup="true" %>
    <!DOCTYPE html>
    <html lang="en">

    <head runat="server">
        <link rel="stylesheet" type="text/css" href="style.css" />
        <meta charset="UTF-8">
        <meta name="description" content="Best place in the web where you can find modern art created by our users. Join now for free and share your content!">
        <meta name="keywords" content="Art, Beauty, Photography, Gallery, Graphics, Wallpapers, Drawing">
        <meta name="author" content="Karolina Malanowska, Michał Regulski">
        <title>ArtIsHere</title>
    </head>

    <body onmouseover="shiftIsPressed(event)">
        <header class="header">
            <div class="header__container">
                <asp:HyperLink ID="Index" runat="server" NavigateUrl="~/index.aspx">
                    <img id="logo" src="images/logo.png" alt="Logo" />
                </asp:HyperLink>
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
                    <li>
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/register.aspx">Register</a>
                        </asp:HyperLink>
                    </li>
                    <li>
                        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/survey.aspx">Survey</a>
                        </asp:HyperLink>
                    </li>
                </ul>
            </nav>
        </header>


        <div class="main-content">
            <form id="register_form" method="POST" autocomplete="on" runat="server">
                <fieldset>
                    <legend>Personal data</legend>
                    <input onfocus="focuser(1)" onblur="blurer()" type="text" name="firstname" title="Name" autofocus required> Name<br>
                    <br>
                    <input onfocus="focuser(2)" onblur="blurer()" type="text" name="lastname" title="Surname" required> Surname<br>
                    <br>
                    <input onfocus="focuser(3)" onblur="blurer()" type="text" name="nick" title="Nick"> Nick<br>
                    <br>
                    <input onfocus="focuser(4)" onblur="blurer()" type="password" name="pass" title="Password"> Password<br>
                    <br>
                    <input list="month" name="month" title="Month of birth"> Month of birth<br>
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
                    <br>
                    <input type="email" name="email" title="E-mail" required> E-mail<br>
                    <br>
                    <input type="tel" name="tel" title="Phone number (9 digits)" pattern="[0-9]{9}"> Phone number (9 digits)
                    <br>
                </fieldset>
                <br>
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
                    <input type="checkbox" checked="checked" name="mentoring" class="mentoring-checkbox" title="I want to participate in ArtIsHere mentoring program"><b>I want to participate in ArtIsHere mentoring program</b>
                </fieldset>

                <input class="button" onclick="submitter()" id="submit-btn" type="submit" value="Submit">
                <input class="button" onclick="resetter()" type="reset" value="Reset"><br>
            </form>
        </div>
        <div class="promotion">
            <hr>
            <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/register.aspx">Register now!</a>
            </asp:HyperLink>
        </div>
        <hr>
        </div>

        <footer class="main-footer">
            <div class="bottom-footer">
                <p>ArtIsHere &#169;
                </p>
            </div>
        </footer>
    </body>

    </html>
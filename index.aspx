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

    <body runat="server">
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
            <h4 class="centered-text">Best place in the web where you can find modern art created by our users. Join now for free and share your content!
            </h4>
            <hr>
            <div class="small-gallery">
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
            <div class="promotion">
                <hr>
                <p id="checkout">Check out our website!
                    <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/register.aspx">Register now!</a>
                    </asp:HyperLink>
                </p>
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
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
            <form method="POST" autocomplete="on" id="surveyform" runat="server">
                </select><br>
                <br> What is your favourite colour?<br>
                <input type="color" name="favcolor" title="Choose a color"><br>
                <br> In which month were you born?<br>
                <input type="month" name="birthmonth" title="Choose your month of your birth"><br>
                <br> How much do you like this page?<br>
                <input type="range" name="satisfaction" title="Satisfaction" min="0" max="10"><br>
                <br> Do you have your own website?<br>
                <asp:TextBox ID="name_text" runat="server"></asp:TextBox>
                <br> Choose types you are into:<br>
                <asp:CheckBox ID="ceramixcheck" runat="server" Text="Ceramics" />
                <asp:CheckBox ID="drawingcheck" runat="server" Text="Drawing" />
                <asp:CheckBox ID="photocheck" runat="server" Text="Photography" />
                <asp:CheckBox ID="sculpturecheck" runat="server" Text="Sculpture" />
                <asp:CheckBox ID="videocheck" runat="server" Text="Video" />
                <br> Choose categories you want to follow:<br>
                <asp:CheckBox ID="abstractcheck" runat="server" Text="Abstract" />
                <asp:CheckBox ID="fashionheck" runat="server" Text="Fashion" />
                <asp:CheckBox ID="naturecheck" runat="server" Text="Nature" />
                <asp:CheckBox ID="archcheck" runat="server" Text="Architecture" />
                <br> How much time you spend on creating art? (per week):<br>
                <asp:RadioButtonList ID="timespent" runat="server">
                    <asp:ListItem Text="0-4" Value="0-4" />
                    <asp:ListItem Text="5-8" Value="5-8" />
                    <asp:ListItem Text="9-16" Value="9-16" />
                    <asp:ListItem Text="16+" Value="16+" />
                </asp:RadioButtonList>
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
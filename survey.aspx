<%@ Page Title="Survey" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
CodeBehind="Survey.aspx.cs" Inherits="Systemy_webowe.Survey" %>

<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <div class="main-content">
        <form method="POST" autocomplete="on" id="surveyform">
            <fieldset>
                <legend>Tell us your preferences</legend>
                <select name="artist">
                    <option value="Zdzisław Kropka">Zdzisław Kropka</option>
                    <option value="Stefan Kopytko">Stefan Kopytko</option>
                    <option value="Waldemar Gąbka">Waldemar Gąbka</option>
                    <option value="Andrzej Kochanek">Andrzej Kochanek</option>
                    <option value="Michał Pietraszko">Michał Pietraszko</option>
                    <option value="Barbara Mazur">Barbara Mazur</option>
                </select><br>
                What is your favourite colour?<br>
                <input type="color" name="favcolor" title="Choose a color"/><br>
                Which month were you born in?<br>
                <input type="month" name="birthmonth" title="Choose your month of your birth"/><br>
                How much do you like this page?<br>
                <input type="range" name="satisfaction" title="Satisfaction" min="0" max="10"/><br>
                Do you have your own website?<br>
                <input type="url" name="url" title="Your website"/><br>
                Choose types you are into:<br>
                <asp:CheckBox ID="ceramixcheck" Text="Ceramics"/>
                <asp:CheckBox ID="drawingcheck" Text="Drawing"/>
                <asp:CheckBox ID="photocheck" Text="Photography"/>
                <asp:CheckBox ID="sculpturecheck" Text="Sculpture"/>
                <asp:CheckBox ID="videocheck" Text="Video"/>
                <br>
                Choose categories you want to follow:<br>
                <asp:CheckBox ID="abstractcheck" Text="Abstract"/>
                <asp:CheckBox ID="fashionheck" Text="Fashion"/>
                <asp:CheckBox ID="naturecheck" Text="Nature"/>
                <asp:CheckBox ID="archcheck" Text="Architecture"/>
                <br>
                How much time you spend on creating art? (per week):<br>
                <asp:RadioButtonList ID="timespent">
                    <asp:ListItem Value="0-4">0-4</asp:ListItem>
                    <asp:ListItem Value="5-8">5-8</asp:ListItem>
                    <asp:ListItem Value="9-16">9-16</asp:ListItem>
                    <asp:ListItem Value="16+">16+</asp:ListItem>
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
        <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/Register.aspx">
            Register now!
        </asp:HyperLink>
        <hr>
    </div>
</asp:Content>
<%@ Page Title="Survey" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
CodeBehind="Survey.aspx.cs" Inherits="Systemy_webowe.Survey" %>

<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <div class="main-content">
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
            <asp:CheckBox ID="ceramixcheck" runat="server" Text="Ceramics"/>
            <asp:CheckBox ID="drawingcheck" runat="server" Text="Drawing"/>
            <asp:CheckBox ID="photocheck" runat="server" Text="Photography"/>
            <asp:CheckBox ID="sculpturecheck" runat="server" Text="Sculpture"/>
            <asp:CheckBox ID="videocheck" runat="server" Text="Video"/>
            <br>
            Choose categories you want to follow:<br>
            <asp:CheckBox ID="abstractcheck" runat="server" Text="Abstract"/>
            <asp:CheckBox ID="fashionheck" runat="server" Text="Fashion"/>
            <asp:CheckBox ID="naturecheck" runat="server" Text="Nature"/>
            <asp:CheckBox ID="archcheck" runat="server" Text="Architecture"/>
            <br>
            How much time you spend on creating art? (per week):<br>
            <asp:RadioButtonList ID="timespent" runat="server">
                <asp:ListItem Value="0-4">0-4</asp:ListItem>
                <asp:ListItem Value="5-8">5-8</asp:ListItem>
                <asp:ListItem Value="9-16">9-16</asp:ListItem>
                <asp:ListItem Value="16+">16+</asp:ListItem>
            </asp:RadioButtonList>
            <br>
            <input type="submit" id="survey-button"><br>
        </fieldset>

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
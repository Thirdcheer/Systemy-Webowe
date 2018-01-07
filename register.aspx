<%@ Page Title="Register" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
CodeBehind="Register.aspx.cs" Inherits="Systemy_webowe.Register" %>

<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <div class="main-content">
        <form id="register_form" method="POST" autocomplete="on" runat="server">
            <fieldset>
                <legend>Personal data</legend>
                <asp:TextBox id="name" runat="server"/> Name<br>
                <asp:RequiredFieldValidator ID="RequiredName" runat="server"
                    ControlToValidate="name"
                    ErrorMessage="Name cannot be empty"
                    ForeColor="Red">
                </asp:RequiredFieldValidator>
                <br>
                <asp:TextBox id="lastname" runat="server"/> Lastname<br>
                <asp:RequiredFieldValidator ID="RequiredLastName" runat="server"
                    ControlToValidate="lastname"
                    ErrorMessage="Lastname cannot be empty"
                    ForeColor="Red">
                </asp:RequiredFieldValidator>
                <br>
                <asp:TextBox id="nick" runat="server" /> Nick<br>
                <asp:RequiredFieldValidator ID="RequiredNick" runat="server"
                    ControlToValidate="nick"
                    ErrorMessage="Nick cannot be empty"
                    ForeColor="Red">
                </asp:RequiredFieldValidator>
                <br>
                <asp:TextBox id="password" runat="server"/> Password<br>
                <asp:RequiredFieldValidator ID="RequiredPassword" runat="server"
                    ControlToValidate="password"
                    ErrorMessage="Password cannot be empty"
                    ForeColor="Red">
                </asp:RequiredFieldValidator>
                <br>
                <asp:TextBox id="month" runat="server"/> Month of birth<br>
                <br>
                <asp:TextBox id="email" runat="server" /> E-mail<br>
                <asp:RegularExpressionValidator id="EmailRegex" runat="server"
                    ControlToValidate="email"
                    ErrorMessage="Incorrect email format"
                    ValidationExpression="^(?(\&quot;&quot;)(\&quot;&quot;.+?&quot;&quot;@)|(([0-9a-zA-Z]((\.(?!\.))|[-!#\$%&'\*\+/=\?\^`\{\}\|~\w])*)(?<=[0-9a-zA-Z])@))(?(\[)(\[(\d{1,3}\.){3}\d{1,3}\])|(([0-9a-zA-Z][-\w]*[0-9a-zA-Z]\.)+[a-zA-Z]{2,6}))$"
                    ForeColor="Red" />
                <br>
                <asp:TextBox id="phone" runat="server" /> Phone number (9 digits)<br>
                <asp:RegularExpressionValidator ID="Regular" runat="server"
                    ControlToValidate="phone"
                    ErrorMessage="Incorrect phone format"
                    ValidationExpression="^\d{3}-\d{3}-\d{3}$"
                    ForeColor="Red" />
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

            <asp:Button ID="send" text="Submit" runat="server"></asp:Button>
            <asp:Button id="reset" Text="Reset" runat="server" ></asp:Button>
        </form>
    </div>
    <div class="promotion">
        <hr>
        <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/Register.aspx">
            Register now!
        </asp:HyperLink>
    </div>
</asp:Content>
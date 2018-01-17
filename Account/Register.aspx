<%@ Page Title="Register" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
CodeBehind="Register.aspx.cs" Inherits="Systemy_webowe.Account.Register" %>

<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <div class="main-content">
        <h2>Create a New Account</h2>
        <p>Use the form below to create a new account.</p>
        <p>Passwords are required to be a minimum of <%= Membership.MinRequiredPasswordLength %> characters in length.</p>

        <asp:Literal ID="ErrorMessage" runat="server"/>

        <asp:ValidationSummary ID="RegisterUserValidationSummary" runat="server" ValidationGroup="RegisterUserValidationGroup"/>

        <fieldset>
            <legend>Account Information</legend>

            <asp:Label ID="UsernameLabel" runat="server" AssociatedControlID="Username">Username:</asp:Label>
            <br/>
            <asp:TextBox ID="Username" runat="server"/>
            <asp:RequiredFieldValidator ID="UserNameRequired"
                                        runat="server"
                                        ControlToValidate="Username"
                                        ErrorMessage="Username is required."
                                        ToolTip="Username is required."
                                        ValidationGroup="RegisterUserValidationGroup"/>
            <br/>
            <asp:Label ID="NameLabel" runat="server" AssociatedControlID="Name">Name:</asp:Label>
            <br/>
            <asp:TextBox ID="Name" runat="server"/>
            <asp:RequiredFieldValidator ID="RequiredName"
                                        runat="server"
                                        ControlToValidate="Name"
                                        ErrorMessage="Name is required"
                                        ToolTip="Name is required"
                                        ValidationGroup="RegisterUserValidationGroup"/>
            <br/>
            <asp:Label ID="LastNameLabel" runat="server" AssociatedControlID="LastName">Last name:</asp:Label>
            <br/>
            <asp:TextBox id="LastName" runat="server"/>
            <asp:RequiredFieldValidator ID="RequiredLastName"
                                        runat="server"
                                        ControlToValidate="LastName"
                                        ErrorMessage="Last name is required"
                                        ToolTip="Last name is required"
                                        ValidationGroup="RegisterUserValidationGroup"/>
            <br/>
            <asp:Label ID="EmailLabel" runat="server" AssociatedControlID="Email">E-mail:</asp:Label>
            <br/>
            <asp:TextBox ID="Email" runat="server"/>
            <asp:RequiredFieldValidator ID="EmailRequired"
                                        runat="server"
                                        ControlToValidate="Email"
                                        ErrorMessage="E-mail is required."
                                        ToolTip="E-mail is required."
                                        ValidationGroup="RegisterUserValidationGroup"/>
            <asp:RegularExpressionValidator ID="EmailRegex"
                                            runat="server"
                                            ControlToValidate="Email"
                                            ErrorMessage="E-mail is malformated."
                                            ToolTip="E-mail is malformated."
                                            ValidationGroup="RegisterUserValidationGroup"
                                            ValidationExpression="^(?(\&quot;&quot;)(\&quot;&quot;.+?&quot;&quot;@)|(([0-9a-zA-Z]((\.(?!\.))|[-!#\$%&'\*\+/=\?\^`\{\}\|~\w])*)(?<=[0-9a-zA-Z])@))(?(\[)(\[(\d{1,3}\.){3}\d{1,3}\])|(([0-9a-zA-Z][-\w]*[0-9a-zA-Z]\.)+[a-zA-Z]{2,6}))$"/>
            <br/>
            <asp:Label ID="PasswordLabel" runat="server" AssociatedControlID="Password">Password:</asp:Label>
            <br/>
            <asp:TextBox ID="Password" runat="server" TextMode="Password"/>
            <asp:RequiredFieldValidator ID="PasswordRequired"
                                        runat="server"
                                        ControlToValidate="Password"
                                        ErrorMessage="Password is required."
                                        ToolTip="Password is required."
                                        ValidationGroup="RegisterUserValidationGroup"/>
            <br/>
            <asp:Label ID="ConfirmPasswordLabel" runat="server" AssociatedControlID="ConfirmPassword">Confirm Password:</asp:Label>
            <br/>
            <asp:TextBox ID="ConfirmPassword" runat="server" TextMode="Password"/>
            <asp:RequiredFieldValidator ID="ConfirmPasswordRequired"
                                        runat="server"
                                        ControlToValidate="ConfirmPassword"
                                        Display="Dynamic"
                                        ErrorMessage="Confirm Password is required."
                                        ToolTip="Confirm Password is required."
                                        ValidationGroup="RegisterUserValidationGroup">
            </asp:RequiredFieldValidator>
            <br/>
            <asp:CompareValidator ID="PasswordCompare"
                                  runat="server"
                                  ControlToCompare="Password"
                                  ControlToValidate="ConfirmPassword"
                                  Display="Dynamic"
                                  ErrorMessage="Password does not match the confirm password."
                                  ValidationGroup="RegisterUserValidationGroup">
            </asp:CompareValidator>
        </fieldset>
        
        <asp:Button runat="server" OnClick="CreateUser_Click" Text="Register" />

        <div class="promotion">
            <hr>
            <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/Account/Register.aspx">
                Register now!
            </asp:HyperLink>
        </div>
    </div>
</asp:Content>
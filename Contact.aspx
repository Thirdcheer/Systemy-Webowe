<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
CodeBehind="Contact.aspx.cs" Inherits="Systemy_webowe.Contact" %>

<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <div class="main-content">
        <hr>
        <h4 class="centered-text">
            Best place in the web where you can find modern art created by our users. Join now for
            free and share your
            content!
        </h4>
        <div class="mail-to">
            <hr>
            <a href="mailto:someone@example.com" style="color: plum">someone@example.com</a>
            <button id="Contact">Contact</button>
        </div>
        <div class="promotion">
            <hr>
            <p>Check out our website! <a href="register.aspx" id="register-link">Register now!</a></p>
        </div>
        <hr>
    </div>
</asp:Content>
<%@ Page Title="Sitemap" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
CodeBehind="Sitemap.aspx.cs" Inherits="Systemy_webowe.Sitemap" %>

<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <div class="main-content">
        <a href="index.aspx">Main page</a>
        <details>
            <summary>Content of page</summary>
            <a href="Gallery.aspx">Gallery</a>
            <a href="About.aspx">About</a>
            <a href="Contact.aspx">Contact</a>
            <a href="Sitemap.aspx">Sitemap</a>
            <a href="Register.aspx">Register</a>
            <aside>More content soon!</aside>
        </details>
        <hr>
    </div>
</asp:Content>
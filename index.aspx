<%@ Page Title="ArtIsHere" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
CodeBehind="Index.aspx.cs" Inherits="Systemy_webowe.Index" %>

<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <div class="main-content">
        <h4 class="centered-text">
            Best place in the web where you can find modern art created by our users. Join now for free and share your content!
        </h4>
        <hr>
        <div class="small-gallery">
            <div class="gallery-element">
                <span id="gallery-element-1"></span>
            </div>
            <div class="gallery-element">
                <span id="gallery-element-2"></span>
            </div>
            <div class="gallery-element">
                <span id="gallery-element-3"></span>
            </div>
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
            <p id="checkout">
                Check out our website!
                <asp:HyperLink ID="HyperLink" runat="server" NavigateUrl="~/Register.aspx">
                    Register now!
                </asp:HyperLink>
            </p>
        </div>
        <hr>
    </div>
</asp:Content>
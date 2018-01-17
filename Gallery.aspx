<%@ Page Title="Gallery" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
CodeBehind="Gallery.aspx.cs" Inherits="Systemy_webowe.About" %>

<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <div class="main-content">
        <div class="gallery">
            <div class="picture-show">
                <img id="first" src="Images/gallery_images/beauty.jpg" alt="beauty" width="600" height="400">
                <div class="note">
                    Rating:
                    <meter value="0.7">Rating</meter>
                </div>
            </div>

            <div class="picture-show">
                <img id="second" src="Images/gallery_images/css.jpeg" alt="css" width="600" height="400">
                <div class="note">
                    Rating:
                    <meter value="1.0">Rating</meter>
                </div>
            </div>

            <div class="picture-show">
                <img src="Images/gallery_images/dandelion.jpeg" alt="dandelion" width="600" height="400">
                <div class="note">
                    Rating:
                    <meter value="0.5">Rating</meter>
                </div>
            </div>

            <div class="picture-show">
                <img src="Images/gallery_images/dodge.jpg" alt="dodge" width="600" height="400">
                <div class="note">
                    Rating:
                    <meter value="0.9">Rating</meter>
                </div>
            </div>

            <div class="picture-show">
                <img src="Images/gallery_images/einstein.jpg" alt="einstein" width="600" height="400">
                <div class="note">
                    Rating:
                    <meter value="0.7">Rating</meter>
                </div>
            </div>

            <div class="picture-show">
                <img src="Images/gallery_images/horus.jpg" alt="horus" width="600" height="400">
                <div class="note">
                    Rating:
                    <meter value="0.8">Rating</meter>
                </div>
            </div>

            <div class="picture-show">
                <img src="Images/gallery_images/origami-boats.jpeg" alt="origami" width="600" height="400">
                <div class="note">
                    Rating:
                    <meter value="0.1">Rating</meter>
                </div>
            </div>

            <div class="picture-show">
                <img src="Images/gallery_images/spiral-glass.jpeg" alt="spiral" width="600" height="400">
                <div class="note">
                    Rating:
                    <meter value="0.3">Rating</meter>
                </div>
            </div>

            <div class="picture-show">
                <img src="Images/gallery_images/white-ornaments.jpeg" alt="ornaments" width="600" height="400">
                <div class="note">
                    Rating:
                    <meter value="0.2">Rating</meter>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
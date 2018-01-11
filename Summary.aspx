<%@ Page Title="Summary" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
CodeBehind="Summary.aspx.cs" Inherits="Systemy_webowe.Summary" %>

<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <div class="main-content">
        <form id="formularz" runat="server">
            <fieldset>
            <legend>Shop</legend>
        <div>
            <nav id="header__menu">
                <ul>
                    <li><a href="Shop.aspx">Shop</a></li>
                    <li><a href="Cart.aspx">Cart</a></li>
                </ul>
            </nav>
            
    </div>
                <div style="padding: 30px; width: 685px; margin-left: 84px; ">
                    <h1>Summary</h1>
                    <h2>
                        <asp:Label ID="Text1" runat="server" Text="Thank you for order!"></asp:Label>
                    </h2>
                   <asp:Label ID="Text2" runat="server" Text="Total price: "></asp:Label>
                   <br>
                   <asp:Label ID="Text3" runat="server" Text="Payment Method: "></asp:Label>
                   <br>
                   <br>
                   <asp:HyperLink ID="Link1" runat="server" NavigateUrl="~/Shop.aspx">BACK TO SHOP</asp:HyperLink>
                </div>
        </fieldset>
        </form>
    </div>
</asp:Content>
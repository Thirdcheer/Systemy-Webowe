<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.master" CodeBehind="Shop.aspx.cs" Inherits="Systemy_webowe.Shop" %>

<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <div class="main-content">
        <form id="form1" runat="server">
            <fieldset>
            <legend>Shop</legend>
        <div>
            <asp:Label ID="Label1" runat="server" Text="Items in cart: "></asp:Label>
            <asp:Label ID="Label2" runat="server" Text="0"></asp:Label>
            <nav id="header__menu">
                <ul>
                    <li><a href="Shop.aspx">Shop</a></li>
                    <li><a href="Cart.aspx">Cart</a></li>
                </ul>
            </nav>
            
    </div>
        <div>
                <div style="display: block; margin-right: 50px">
                <asp:RadioButtonList ID="RadioButtonList1" BorderStyle="Double" BorderColor="White" runat="server" OnSelectedIndexChanged="onCategorySelect" AutoPostBack="True">
                <asp:ListItem>Posters</asp:ListItem>
                <asp:ListItem>Stickers</asp:ListItem>
                </asp:RadioButtonList>
                </div>
                <asp:CheckBoxList ID="CheckBoxList1"  runat="server" Visible="False">
                    
                </asp:CheckBoxList>
                <hr>
                <div style="position:static">
                    <asp:Button ID="Button1" runat="server" Text="Add to cart" OnClick="onAddToCartClick"/>
                    <asp:Label ID="Label3" runat="server"
                    Text="Some of the selected items have not been added because they're already in your cart"
                    ForeColor="Red" Visible="False"></asp:Label>   
                </div>
            </div>
            </fieldset>
        </form>
    </div>
</asp:Content>
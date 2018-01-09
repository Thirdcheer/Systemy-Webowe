<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.master" CodeFile="Cart.aspx.cs" Inherits="Systemy_webowe.Cart" %>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <div class="main-content">
        <form id="form1" runat="server">
            <fieldset>
                <legend>Cart</legend>
                <div>
                    <nav id="header__menu">
                        <ul>
                            <li><a href="Shop.aspx">Shop</a></li>
                            <li><a href="Cart.aspx">Cart</a></li>
                        </ul>
                    </nav>
            
                </div>
                <div style="float: left; margin-right: 50px">
                    <asp:Label ID="Label3" runat="server" Text="Your cart is empty" Visible="False"></asp:Label>
                    <asp:BulletedList ID="BulletedList1" runat="server">
                    </asp:BulletedList>
                    <p>
 
                        <asp:Label ID="Label4" runat="server" Text="Choose delivery method:"></asp:Label>
         
                        <asp:RadioButtonList ID="deliveryCheckBox" runat="server" AutoPostBack="True">
                            <asp:ListItem Value="10" Selected="True">Delivery (+10$)</asp:ListItem>
                            <asp:ListItem Value="0">Collection (Free)</asp:ListItem>
                        </asp:RadioButtonList>
 
                    </p>
                    <p>
 
                        <asp:Label ID="Label5" runat="server" Text="Choose payment method:"></asp:Label>
                        <asp:RadioButtonList ID="paymentCheckBox"  runat="server">
                            <asp:ListItem Selected="True">Transfer</asp:ListItem>
                            <asp:ListItem>Credit Card</asp:ListItem>
                        </asp:RadioButtonList>
 
                    </p>
                    <p>
 
                        <asp:Label ID="priceLabel" runat="server" Text="Price: "></asp:Label>
 
                    </p>
                    <p>
 
                        <asp:Button ID="orderButton" runat="server" Text="Order" OnClick="orderButton_Click" />
 
                    </p>
                </div>
            </fieldset>
        </form>
    </div>
</asp:Content>
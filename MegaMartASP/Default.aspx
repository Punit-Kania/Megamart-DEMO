<%@ Page Title="Home Page" Language="VB" MasterPageFile="~/Site.Master" StylesheetTheme="Theme1" AutoEventWireup="false"
    CodeFile="Default.aspx.vb" Inherits="_Default" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
   <h1>welcome to shpoing mart</h1>
   <p>SHOP YOUR FAVORITE PRODUCT </p>
    
        <asp:Button ID="Button1" runat="server" PostBackUrl="~/products.aspx" 
            Text="SHOP NOW" />
    
     <div class="category-section">

        <h2>Shop by Category</h2>

        <div class="category-box">
            <h3>Electronics</h3>
            <p>Mobiles, Laptops, Accessories</p>
        </div>

        <div class="category-box">
            <h3>Grocery</h3>
            <p>Daily household products</p>
        </div>

        <div class="category-box">
            <h3>Fashion</h3>
            <p>Clothing and accessories</p>
        </div>

</asp:Content>
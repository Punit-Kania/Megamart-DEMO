<%@ Page Title="" Language="VB" MasterPageFile="~/Site.master" AutoEventWireup="false" CodeFile="UserDashboard.aspx.vb" Inherits="UserDashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
<div class="user-dashboard">

        <!-- Welcome Section -->
        <div class="dashboard-header">

            <div>
                <h1>My Dashboard</h1>

                <asp:Label
                    ID="lblWelcome"
                    runat="server"
                    CssClass="welcome-text"
                    Text="Welcome">
                </asp:Label>
            </div>

            <asp:Button
                ID="btnLogout"
                runat="server"
                Text="Logout"
                CssClass="logout-button" />

        </div>


        <!-- Dashboard Menu -->
        <div class="dashboard-menu">

            <asp:LinkButton
                ID="lnkHome"
                runat="server"
                Text="Home"
                PostBackUrl="~/Default.aspx"
                CssClass="dashboard-link">
            </asp:LinkButton>

            <asp:LinkButton
                ID="lnkProducts"
                runat="server"
                Text="Products"
                PostBackUrl="~/Products.aspx"
                CssClass="dashboard-link">
            </asp:LinkButton>

            <asp:LinkButton
                ID="lnkOrders"
                runat="server"
                Text="My Orders"
                CssClass="dashboard-link">
            </asp:LinkButton>

        </div>


        <!-- Welcome Banner -->
        <div class="dashboard-banner">

            <h2>Welcome to MegaMart</h2>

            <p>
                Find your favourite products at the best prices.
            </p>

            <asp:Button
                ID="btnShopNow"
                runat="server"
                Text="Shop Now"
                PostBackUrl="~/Products.aspx"
                CssClass="shop-button" />

        </div>


        <!-- Search Section -->
        <div class="dashboard-section">

            <h2>Search Products</h2>

            <div class="dashboard-search">

                <asp:Label
                    ID="lblSearch"
                    runat="server"
                    Text="Product Name:">
                </asp:Label>

                <asp:TextBox
                    ID="txtSearch"
                    runat="server"
                    CssClass="search-box">
                </asp:TextBox>

                <asp:Button
                    ID="btnSearch"
                    runat="server"
                    Text="Search"
                    CssClass="search-button" />

                <asp:Button
                    ID="btnShowAll"
                    runat="server"
                    Text="Show All"
                    CssClass="search-button" />

            </div>

        </div>


        <!-- Category Section -->
        <div class="dashboard-section">

            <h2>Choose Category</h2>

            <asp:ListBox
                ID="lstCategory"
                runat="server"
                AutoPostBack="True"
                Rows="4"
                CssClass="category-list">

                <asp:ListItem
                    Text="All Categories"
                    Value="All">
                </asp:ListItem>

                <asp:ListItem
                    Text="Electronics"
                    Value="electronics">
                </asp:ListItem>

                <asp:ListItem
                    Text="Grocery"
                    Value="grocery">
                </asp:ListItem>

                <asp:ListItem
                    Text="Fashion"
                    Value="fashion">
                </asp:ListItem>

            </asp:ListBox>

        </div>


        <!-- Products -->
        <div class="dashboard-section">

            <h2>Available Products</h2>

            <asp:GridView
                ID="gvProducts"
                runat="server"
                AutoGenerateColumns="False"
                Width="95%"
                CssClass="products-grid"
                GridLines="Both">

                <Columns>

                    <asp:BoundField
                        DataField="productid"
                        HeaderText="Product ID" />

                    <asp:BoundField
                        DataField="productname"
                        HeaderText="Product Name" />

                    <asp:BoundField
                        DataField="category"
                        HeaderText="Category" />

                    <asp:BoundField
                        DataField="price"
                        HeaderText="Price" />

                    <asp:BoundField
                        DataField="stockqty"
                        HeaderText="Available Stock" />

                    <asp:TemplateField
                        HeaderText="Action">

                        <ItemTemplate>

                            <asp:LinkButton
                                ID="lnkViewDetails"
                                runat="server"
                                Text="View Details"
                                CommandName="ViewDetails"
                                CommandArgument='<%# Eval("productid") %>'
                                CssClass="view-button">
                            </asp:LinkButton>

                        </ItemTemplate>

                    </asp:TemplateField>

                </Columns>

            </asp:GridView>

        </div>


        <!-- Message -->
        <div class="dashboard-message">

            <asp:Label
                ID="lblMessage"
                runat="server">
            </asp:Label>

        </div>

    </div><div class="user-dashboard">

        <!-- Welcome Section -->
        <div class="dashboard-header">

            <div>
                <h1>My Dashboard</h1>

                <asp:Label
                    ID="Label1"
                    runat="server"
                    CssClass="welcome-text"
                    Text="Welcome">
                </asp:Label>
            </div>

            <asp:Button
                ID="Button1"
                runat="server"
                Text="Logout"
                CssClass="logout-button" />

        </div>


        <!-- Dashboard Menu -->
        <div class="dashboard-menu">

            <asp:LinkButton
                ID="LinkButton1"
                runat="server"
                Text="Home"
                PostBackUrl="~/Default.aspx"
                CssClass="dashboard-link">
            </asp:LinkButton>

            <asp:LinkButton
                ID="LinkButton2"
                runat="server"
                Text="Products"
                PostBackUrl="~/Products.aspx"
                CssClass="dashboard-link">
            </asp:LinkButton>

            <asp:LinkButton
                ID="LinkButton3"
                runat="server"
                Text="My Orders"
                CssClass="dashboard-link">
            </asp:LinkButton>

        </div>


        <!-- Welcome Banner -->
        <div class="dashboard-banner">

            <h2>Welcome to MegaMart</h2>

            <p>
                Find your favourite products at the best prices.
            </p>

            <asp:Button
                ID="Button2"
                runat="server"
                Text="Shop Now"
                PostBackUrl="~/Products.aspx"
                CssClass="shop-button" />

        </div>


        <!-- Search Section -->
        <div class="dashboard-section">

            <h2>Search Products</h2>

            <div class="dashboard-search">

                <asp:Label
                    ID="Label2"
                    runat="server"
                    Text="Product Name:">
                </asp:Label>

                <asp:TextBox
                    ID="TextBox1"
                    runat="server"
                    CssClass="search-box">
                </asp:TextBox>

                <asp:Button
                    ID="Button3"
                    runat="server"
                    Text="Search"
                    CssClass="search-button" />

                <asp:Button
                    ID="Button4"
                    runat="server"
                    Text="Show All"
                    CssClass="search-button" />

            </div>

        </div>


        <!-- Category Section -->
        <div class="dashboard-section">

            <h2>Choose Category</h2>

            <asp:ListBox
                ID="ListBox1"
                runat="server"
                AutoPostBack="True"
                Rows="4"
                CssClass="category-list">

                <asp:ListItem
                    Text="All Categories"
                    Value="All">
                </asp:ListItem>

                <asp:ListItem
                    Text="Electronics"
                    Value="electronics">
                </asp:ListItem>

                <asp:ListItem
                    Text="Grocery"
                    Value="grocery">
                </asp:ListItem>

                <asp:ListItem
                    Text="Fashion"
                    Value="fashion">
                </asp:ListItem>

            </asp:ListBox>

        </div>


        <!-- Products -->
        <div class="dashboard-section">

            <h2>Available Products</h2>

            <asp:GridView
                ID="GridView1"
                runat="server"
                AutoGenerateColumns="False"
                Width="95%"
                CssClass="products-grid"
                GridLines="Both">

                <Columns>

                    <asp:BoundField
                        DataField="productid"
                        HeaderText="Product ID" />

                    <asp:BoundField
                        DataField="productname"
                        HeaderText="Product Name" />

                    <asp:BoundField
                        DataField="category"
                        HeaderText="Category" />

                    <asp:BoundField
                        DataField="price"
                        HeaderText="Price" />

                    <asp:BoundField
                        DataField="stockqty"
                        HeaderText="Available Stock" />

                    <asp:TemplateField
                        HeaderText="Action">

                        <ItemTemplate>

                            <asp:LinkButton
                                ID="lnkViewDetails"
                                runat="server"
                                Text="View Details"
                                CommandName="ViewDetails"
                                CommandArgument='<%# Eval("productid") %>'
                                CssClass="view-button">
                            </asp:LinkButton>

                        </ItemTemplate>

                    </asp:TemplateField>

                </Columns>

            </asp:GridView>

        </div>


        <!-- Message -->
        <div class="dashboard-message">

            <asp:Label
                ID="Label3"
                runat="server">
            </asp:Label>

        </div>

    </div>
</asp:Content>


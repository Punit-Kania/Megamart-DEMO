<%@ Page Title="" Language="VB" MasterPageFile="~/site.master" StylesheetTheme="Theme1" AutoEventWireup="false" CodeFile="products.aspx.vb" Inherits="products" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <div>
     <h1>Our Products</h1>

    <p class="products-intro">
        Explore our collection of quality products at the best prices.
    </p>
    <label>Search Product :</label>
     <asp:TextBox ID="txtsearch" runat="server"></asp:TextBox>
     <asp:Button ID="btnsearch" runat="server" Text="Search" />
     <br />
     <div class="category-filter">

    <asp:Label
        ID="lblCategory"
        runat="server"
        Text="Select Category:">
    </asp:Label>

    <br />

    <asp:ListBox
        ID="lstCategory"
        runat="server"
        AutoPostBack="True"
        Rows="4"
        Width="200px">

        <asp:ListItem Text="All Categories"
                      Value="All">
        </asp:ListItem>

        <asp:ListItem Text="Electronics"
                      Value="electronics">
        </asp:ListItem>

        <asp:ListItem Text="Grocery"
                      Value="grocery">
        </asp:ListItem>

        <asp:ListItem Text="Fashion"
                      Value="fashion">
        </asp:ListItem>

    </asp:ListBox>

</div>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
     <asp:Button ID="btnshowall" runat="server" Text="Show all" />
     <br />
     <asp:GridView
    ID="gvProducts"
    runat="server"
    AutoGenerateColumns="False"
    Width="90%"
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
                    ID="lnkDetails"
                    runat="server"
                    Text="View Details"
                    CommandName="ViewDetails"
                    CommandArgument='<%# Eval("productid") %>'>
                </asp:LinkButton>

            </ItemTemplate>

        </asp:TemplateField>

    </Columns>

</asp:GridView>
     <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</div>
</asp:Content>


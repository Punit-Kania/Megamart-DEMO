<%@ Page Title="" Language="VB" MasterPageFile="~/site.master" AutoEventWireup="false" CodeFile="RepeaterProducts.aspx.vb" Inherits="RepeaterProducts" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
<div class="repeater-products">

    <h1>Featured Products</h1>

    <asp:Repeater
        ID="rptProducts"
        runat="server">

        <ItemTemplate>

            <div class="product-card">

                <h2>
                    <%# Eval("productname") %>
                </h2>

                <p>
                    Category:
                    <%# Eval("category") %>
                </p>

                <p>
                    Price:
                    ₹<%# Eval("price") %>
                </p>

                <p>
                    Available:
                    <%# Eval("stockqty") %>
                </p>

                <asp:HyperLink
                    ID="lnkView"
                    runat="server"
                    Text="View Details"
                    NavigateUrl='<%# "ProductDetails.aspx?id=" & Eval("productid") %>'>
                </asp:HyperLink>

            </div>

        </ItemTemplate>

    </asp:Repeater>

</div>
</asp:Content>


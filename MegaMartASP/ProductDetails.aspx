<%@ Page Title="" Language="VB" MasterPageFile="~/site.master" AutoEventWireup="false" CodeFile="ProductDetails.aspx.vb" Inherits="ProductDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
<div class="product-details">

    <h1>Product Details</h1>

    <asp:FormView
        ID="fvProduct"
        runat="server">

        <ItemTemplate>

            <div class="product-detail-box">

                <h2>
                    <%# Eval("productname") %>
                </h2>

                <p>
                    <strong>Product ID:</strong>
                    <%# Eval("productid") %>
                </p>

                <p>
                    <strong>Category:</strong>
                    <%# Eval("category") %>
                </p>

                <p>
                    <strong>Price:</strong>
                    ₹<%# Eval("price") %>
                </p>

                <p>
                    <strong>Available Stock:</strong>
                    <%# Eval("stockqty") %>
                </p>

                <asp:Button
                    ID="btnBuy"
                    runat="server"
                    Text="Buy Now" />

            </div>

        </ItemTemplate>

    </asp:FormView>

</div>
</asp:Content>


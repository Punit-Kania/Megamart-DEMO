<%@ Page Title="" Language="VB" MasterPageFile="~/site.master" StylesheetTheme="Theme1" AutoEventWireup="false" CodeFile="login.aspx.vb" Inherits="login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    
<asp:ValidationSummary
    ID="ValidationSummary1"
    runat="server"
    HeaderText="Please correct the following:" />
    username :<asp:TextBox
    ID="txtUsername"
    runat="server">
</asp:TextBox>

    <asp:RequiredFieldValidator
    ID="rfvUsername"
    runat="server"
    ControlToValidate="txtUsername"
    ErrorMessage="Username is required."
    Text="*">
</asp:RequiredFieldValidator>

    <br />
    password :<asp:TextBox
    ID="txtPassword"
    runat="server"
    TextMode="Password">
</asp:TextBox>

<asp:RequiredFieldValidator
    ID="rfvPassword"
    runat="server"
    ControlToValidate="txtPassword"
    ErrorMessage="Password is required."
    Text="*">
</asp:RequiredFieldValidator>

    <br />
    <asp:Button
    ID="btnLogin"
    runat="server"
    Text="Login">
</asp:Button><br />

<asp:Label
    ID="lblMessage"
    runat="server">
</asp:Label>
    <br />
    <h2>i don't have account<asp:HyperLink ID="HyperLink1" runat="server" 
            NavigateUrl="~/register.aspx">Register</asp:HyperLink>
    </h2>

</asp:Content>


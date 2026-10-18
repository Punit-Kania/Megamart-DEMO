<%@ Page Title="" Language="VB" MasterPageFile="~/site.master" StylesheetTheme="Theme1" AutoEventWireup="false" CodeFile="register.aspx.vb" Inherits="register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
<div class="register-container">

    <h1>Create Account</h1>

    <p>Register to start shopping at MegaMart.</p>

    <asp:ValidationSummary
        ID="ValidationSummary1"
        runat="server"
        HeaderText="Please correct the following:"
        CssClass="validation-summary" />

    <div class="form-row">

        <asp:Label
            ID="lblUsername"
            runat="server"
            Text="Username:">
        </asp:Label>

        <asp:TextBox
            ID="txtUsername"
            runat="server">
        </asp:TextBox>

        <asp:RequiredFieldValidator
            ID="rfvUsername"
            runat="server"
            ControlToValidate="txtUsername"
            ErrorMessage="Username is required."
            Text="*"
            Display="Dynamic">
        </asp:RequiredFieldValidator>

    </div>


    <div class="form-row">

        <asp:Label
            ID="lblPassword"
            runat="server"
            Text="Password:">
        </asp:Label>

        <asp:TextBox
            ID="txtPassword"
            runat="server"
            TextMode="Password">
        </asp:TextBox>

        <asp:RequiredFieldValidator
            ID="rfvPassword"
            runat="server"
            ControlToValidate="txtPassword"
            ErrorMessage="Password is required."
            Text="*"
            Display="Dynamic">
        </asp:RequiredFieldValidator>

    </div>


    <div class="form-row">

        <asp:Label
            ID="lblConfirmPassword"
            runat="server"
            Text="Confirm Password:">
        </asp:Label>

        <asp:TextBox
            ID="txtConfirmPassword"
            runat="server"
            TextMode="Password">
        </asp:TextBox>

        <asp:RequiredFieldValidator
            ID="rfvConfirmPassword"
            runat="server"
            ControlToValidate="txtConfirmPassword"
            ErrorMessage="Please confirm your password."
            Text="*"
            Display="Dynamic">
        </asp:RequiredFieldValidator>

        <asp:CompareValidator
            ID="cvPassword"
            runat="server"
            ControlToValidate="txtConfirmPassword"
            ControlToCompare="txtPassword"
            ErrorMessage="Passwords do not match."
            Text="*"
            Display="Dynamic">
        </asp:CompareValidator>

    </div>


    <div class="form-row">

        <asp:Label
            ID="lblEmail"
            runat="server"
            Text="Email:">
        </asp:Label>

        <asp:TextBox
            ID="txtEmail"
            runat="server">
        </asp:TextBox>

        <asp:RegularExpressionValidator
            ID="revEmail"
            runat="server"
            ControlToValidate="txtEmail"
            ValidationExpression="^[^@\s]+@[^@\s]+\.[^@\s]+$"
            ErrorMessage="Enter a valid email address."
            Text="*"
            Display="Dynamic">
        </asp:RegularExpressionValidator>

    </div>


    <div class="form-row">

        <asp:Button
            ID="btnRegister"
            runat="server"
            Text="Register">
        </asp:Button>

    </div>


    <asp:Label
        ID="lblMessage"
        runat="server">
    </asp:Label>

</div>
</asp:Content>


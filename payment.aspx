<%@ Page Title="" Language="C#" MasterPageFile="~/Site3.Master" AutoEventWireup="true" CodeBehind="payment.aspx.cs" Inherits="PET_MART.payment" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
    .payment-container {
        width: 700px;
        margin: 50px auto;
        padding: 30px;
        background: #ffffff;
        border-radius: 15px;
        box-shadow: 0 5px 20px rgba(0,0,0,0.15);
        font-family: Arial, sans-serif;
    }

    .payment-title {
        display: block;
        text-align: center;
        font-size: 32px;
        font-weight: bold;
        color: #e4527e;
        margin-bottom: 25px;
    }

    .payment-label {
        font-weight: bold;
        color: #333;
        margin-top: 12px;
        display: block;
    }

    .payment-textbox {
        width: 260px;
        padding: 8px;
        border: 1px solid #ccc;
        border-radius: 6px;
        margin-top: 5px;
        margin-bottom: 12px;
    }

    .payment-btn {
        background-color: #3366ff;
        color: white;
        border: none;
        padding: 9px 18px;
        border-radius: 8px;
        font-weight: bold;
        cursor: pointer;
        margin: 5px;
    }

    .payment-btn:hover {
        background-color: #254eda;
    }

    .account-box {
        margin-top: 25px;
        padding: 20px;
        border: 1px solid #ccc;
        border-radius: 12px;
        background-color: #f9f9f9;
    }

    .account-heading {
        font-size: 24px;
        font-weight: bold;
        color: #3366ff;
        margin-bottom: 15px;
    }
</style>

<div class="payment-container">

    <asp:Label ID="Label1" runat="server" Text="Payment" CssClass="payment-title"></asp:Label>

    <asp:Label ID="Label2" runat="server" Text="Payment Amount" CssClass="payment-label"></asp:Label>
    <asp:TextBox ID="TextBox1" runat="server" CssClass="payment-textbox"></asp:TextBox>

    <asp:Label ID="Label3" runat="server" Text="Account Number" CssClass="payment-label"></asp:Label>
    <asp:TextBox ID="TextBox2" runat="server" CssClass="payment-textbox"></asp:TextBox>

    <br />

    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Pay Now" CssClass="payment-btn" />
    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Add Account Details" CssClass="payment-btn" />

    <asp:Panel ID="Panel1" runat="server" CssClass="account-box" Visible="False">

        <div class="account-heading">Account Details</div>

        <asp:Label ID="Label5" runat="server" Text="Account Number" CssClass="payment-label"></asp:Label>
        <asp:TextBox ID="TextBox4" runat="server" CssClass="payment-textbox" AutoPostBack="True" OnTextChanged="TextBox4_TextChanged"></asp:TextBox>

        <asp:Label ID="Label6" runat="server" Text="Account Type" CssClass="payment-label"></asp:Label>
        <asp:TextBox ID="TextBox5" runat="server" CssClass="payment-textbox"></asp:TextBox>

        <asp:Label ID="Label4" runat="server" Text="Balance Amount" CssClass="payment-label"></asp:Label>
        <asp:TextBox ID="TextBox3" runat="server" CssClass="payment-textbox"></asp:TextBox>

        <br />

        <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Add" CssClass="payment-btn" />

        <br />

        <asp:Label ID="Label7" runat="server" Text="Label" Visible="False"></asp:Label>

    </asp:Panel>

</div>
</asp:Content>

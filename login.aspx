<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="PET_MART.login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="w-100" style="
    max-width:400px;
    margin:80px auto;
    background:#fff;
    padding:30px;
    border-radius:12px;
    box-shadow:0 8px 20px rgba(0,0,0,0.1);
    text-align:center;
">

    <!-- TITLE -->
    <tr>
        <td colspan="10" style="padding-bottom:20px;">
            <h2 style="color:#000; margin:0;">Login</h2>
        </td>
    </tr>

    <!-- USERNAME -->
    <tr>
        <td></td><td></td><td></td>

        <td style="padding:10px; text-align:left;">
            <asp:Label ID="Label1" runat="server" Text="Username"
                style="color:#000; font-weight:600;"></asp:Label>
        </td>

        <td style="padding:10px;">
            <asp:TextBox ID="TextBox2" runat="server"
                style="width:200px; padding:8px; border:1px solid #ccc; border-radius:6px;"> </asp:TextBox>
        </td>
    </tr>

    <!-- PASSWORD -->
    <tr>
        <td></td><td></td><td></td>

        <td style="padding:10px; text-align:left;">
            <asp:Label ID="Label2" runat="server" Text="Password"
                style="color:#000; font-weight:600;"></asp:Label>
        </td>

        <td style="padding:10px;">
            <asp:TextBox ID="TextBox1" runat="server" TextMode="Password"
                style="width:200px; padding:8px; border:1px solid #ccc; border-radius:6px;"> </asp:TextBox>
        </td>
    </tr>

    <!-- BUTTON -->
    <tr>
        <td></td><td></td><td></td>
        <td></td>

        <td style="padding-top:20px;">
            <asp:Button ID="Button1" runat="server" Text="Login"
                OnClick="Button1_Click"
                style="
                    width:100%;
                    background:#000;
                    color:#fff;
                    border:none;
                    padding:10px;
                    border-radius:6px;
                    font-weight:600;
                    cursor:pointer;">
            </asp:Button>
        </td>
    </tr>

    <!-- ERROR MESSAGE -->
    <tr>
        <td></td><td></td><td></td>
        <td></td>

        <td style="padding-top:10px;">
            <asp:Label ID="Label3" runat="server" Text="Invalid username or password"
                Visible="False"
                style="color:red; font-size:14px;"> </asp:Label>
        </td>
    </tr>

</table>
</asp:Content>

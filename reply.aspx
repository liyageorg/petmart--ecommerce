<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="reply.aspx.cs" Inherits="PET_MART.reply" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style1 {
        margin-left: 40px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="w-100" style="width:60%; margin:45px auto; background:#ffffff; padding:35px; border-radius:16px; box-shadow:0 6px 20px rgba(0,0,0,0.12); border-collapse:separate; border-spacing:0 14px;">

    <tr>
        <td colspan="10" style="text-align:center;">
            <asp:Label ID="Label1" runat="server" Text="Send Reply"
                Style="font-size:30px; font-weight:700; color:#2c3e50;">
            </asp:Label>
        </td>
    </tr>

    <tr>
        <td colspan="10">
            <asp:Label ID="Label2" runat="server" Text="To"
                Style="font-weight:600; color:#34495e;">
            </asp:Label>
        </td>
    </tr>

    <tr>
        <td colspan="10">
            <asp:TextBox ID="TextBox1" runat="server"
                Style="width:100%; padding:11px; border:1px solid #dcdcdc; border-radius:8px; outline:none;">
            </asp:TextBox>
        </td>
    </tr>

    <tr>
        <td colspan="10">
            <asp:Label ID="Label3" runat="server" Text="From"
                Style="font-weight:600; color:#34495e;">
            </asp:Label>
        </td>
    </tr>

    <tr>
        <td colspan="10">
            <asp:TextBox ID="TextBox2" runat="server"
                Style="width:100%; padding:11px; border:1px solid #dcdcdc; border-radius:8px; outline:none;">
            </asp:TextBox>
        </td>
    </tr>

    <tr>
        <td colspan="10">
            <asp:Label ID="Label4" runat="server" Text="Subject"
                Style="font-weight:600; color:#34495e;">
            </asp:Label>
        </td>
    </tr>

    <tr>
        <td colspan="10">
            <asp:TextBox ID="TextBox3" runat="server"
                Style="width:100%; padding:11px; border:1px solid #dcdcdc; border-radius:8px; outline:none;">
            </asp:TextBox>
        </td>
    </tr>

    <tr>
        <td colspan="10">
            <asp:Label ID="Label5" runat="server" Text="Body"
                Style="font-weight:600; color:#34495e;">
            </asp:Label>
        </td>
    </tr>

    <tr>
        <td colspan="10" class="auto-style1">
            <asp:TextBox ID="TextBox4" runat="server" TextMode="MultiLine" Rows="6"
                Style="width:100%; padding:11px; border:1px solid #dcdcdc; border-radius:8px; outline:none; resize:vertical;">
            </asp:TextBox>
        </td>
    </tr>

    <tr>
        <td colspan="10" style="text-align:right;">
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Send Email"
                Style="background:#2c3e50; color:white; border:none; padding:10px 26px; border-radius:8px; font-weight:600; cursor:pointer;" />

            <asp:Label ID="Label6" runat="server" Text="Label" Visible="False"
                Style="margin-left:15px; font-weight:600; color:#27ae60;">
            </asp:Label>
        </td>
    </tr>

</table>
</asp:Content>

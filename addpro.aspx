<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="addpro.aspx.cs" Inherits="PET_MART.addpro" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style1 {
        height: 57px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="w-100" style="background:#f5f5f5; padding:40px 0;">
    
    <tr>
        <td colspan="14" style="text-align:center; padding-bottom:20px;">
            <h2 style="color:#333; font-weight:bold;">Add Product</h2>
        </td>
    </tr>

    <tr>
        <td></td>
        <td></td>
        <td></td>

        <td style="color:#444; font-weight:bold;">Category</td>
        <td>
            <asp:DropDownList ID="DropDownList1" runat="server"
                style="padding:8px; border-radius:6px; border:1px solid #ccc; width:200px;">
            </asp:DropDownList>
        </td>

        <td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td>
    </tr>

    <tr><td colspan="14" style="height:15px;"></td></tr>

    <tr>
        <td></td><td></td><td></td>

        <td style="color:#444; font-weight:bold;">Name</td>
        <td>
            <asp:TextBox ID="TextBox1" runat="server"
                style="padding:8px; border-radius:6px; border:1px solid #ccc; width:200px;">
            </asp:TextBox>
        </td>

        <td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td>
    </tr>

    <tr><td colspan="14" style="height:15px;"></td></tr>

    <tr>
        <td></td><td></td><td></td>

        <td style="color:#444; font-weight:bold;">Description</td>
        <td>
            <asp:TextBox ID="TextBox3" runat="server"
                style="padding:8px; border-radius:6px; border:1px solid #ccc; width:200px;">
            </asp:TextBox>
        </td>

        <td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td>
    </tr>

    <tr><td colspan="14" style="height:15px;"></td></tr>

    <tr>
        <td></td><td></td><td></td>

        <td style="color:#444; font-weight:bold;">Image</td>
        <td>
            <asp:FileUpload ID="FileUpload1" runat="server"
                style="padding:6px;">
            </asp:FileUpload>
        </td>

        <td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td>
    </tr>

    <tr><td colspan="14" style="height:15px;"></td></tr>

    <tr>
        <td></td><td></td><td></td>

        <td style="color:#444; font-weight:bold;">Price</td>
        <td>
            <asp:TextBox ID="TextBox2" runat="server"
                style="padding:8px; border-radius:6px; border:1px solid #ccc; width:200px;">
            </asp:TextBox>
        </td>

        <td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td>
    </tr>

    <tr><td colspan="14" style="height:15px;"></td></tr>

    <tr>
        <td></td><td></td><td></td>

        <td style="color:#444; font-weight:bold;">Stock</td>
        <td>
            <asp:TextBox ID="TextBox4" runat="server"
                style="padding:8px; border-radius:6px; border:1px solid #ccc; width:200px;">
            </asp:TextBox>
        </td>

        <td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td>
    </tr>

    <tr><td colspan="14" style="height:25px;"></td></tr>

    <tr>
        <td colspan="14" style="text-align:center;">
            <asp:Button ID="Button1" runat="server" Text="Add" OnClick="Button1_Click"
                style="background:#333; color:#fff; padding:10px 25px; border:none; border-radius:8px; font-weight:bold; cursor:pointer;"
                onmouseover="this.style.background='#555'"
                onmouseout="this.style.background='#333'" />
        </td>
    </tr>

    <tr>
        <td colspan="14" style="text-align:center; padding-top:10px;">
            <asp:Label ID="Label4" runat="server" Text="Label" Visible="False"
                style="color:green; font-weight:bold;">
            </asp:Label>
        </td>
    </tr>

</table>
</asp:Content>

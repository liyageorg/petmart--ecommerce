<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="addcat.aspx.cs" Inherits="PET_MART.addcat" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="w-100" style="
    max-width:600px;
    margin:50px auto;
    background:#fff;
    padding:30px;
    border-radius:12px;
    box-shadow:0 8px 20px rgba(0,0,0,0.1);
">

    <!-- TITLE -->
    <tr>
        <td colspan="14" style="text-align:center; padding-bottom:20px;">
            <h2 style="color:#000; margin:0;">Add Category</h2>
        </td>
    </tr>

    <!-- NAME -->
    <tr>
        <td></td><td></td><td></td>

        <td style="padding:10px;">
            <asp:Label ID="Label1" runat="server" Text="Category Name"
                style="color:#000; font-weight:600;"></asp:Label>
        </td>

        <td style="padding:10px;">
            <asp:TextBox ID="TextBox1" runat="server"
                placeholder="Enter category name"
                style="width:250px; padding:8px; border:1px solid #ccc; border-radius:6px;">
            </asp:TextBox>
        </td>
    </tr>

    <!-- IMAGE -->
    <tr>
        <td></td><td></td><td></td>

        <td style="padding:10px;">
            <asp:Label ID="Label5" runat="server" Text="Upload Image"
                style="color:#000; font-weight:600;"></asp:Label>
        </td>

        <td style="padding:10px;">
            <asp:FileUpload ID="FileUpload1" runat="server"
                style="border:1px solid #ccc; padding:6px; border-radius:6px; width:250px;" />
        </td>
    </tr>

    <!-- DESCRIPTION -->
    <tr>
        <td></td><td></td><td></td>

        <td style="padding:10px;">
            <asp:Label ID="Label6" runat="server" Text="Description"
                style="color:#000; font-weight:600;"></asp:Label>
        </td>

        <td style="padding:10px;">
            <asp:TextBox ID="TextBox2" runat="server" TextMode="MultiLine" Rows="3"
                placeholder="Enter description"
                style="width:250px; padding:8px; border:1px solid #ccc; border-radius:6px;">
            </asp:TextBox>
        </td>
    </tr>

    <!-- BUTTON -->
    <tr>
        <td></td><td></td><td></td>
        <td></td>

        <td style="padding-top:20px;">
            <asp:Button ID="Button1" runat="server" Text="Add Category"
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

    <!-- MESSAGE -->
    <tr>
        <td></td><td></td><td></td>
        <td></td>

        <td style="padding-top:10px;">
            <asp:Label ID="Label4" runat="server" Visible="False"
                style="color:green; font-size:14px;">
            </asp:Label>
        </td>
    </tr>

</table>

</asp:Content>

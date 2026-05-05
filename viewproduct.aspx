<%@ Page Title="" Language="C#" MasterPageFile="~/Site3.Master" AutoEventWireup="true" CodeBehind="viewproduct.aspx.cs" Inherits="PET_MART.viewproduct" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style1 {
        width: 100%;
    }
        .auto-style3 {
            width: 200px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1" style="background:#f5f5f5; padding:30px 0;">

    <tr>
        <td colspan="14" style="text-align:center;">
            <h2 style="color:#333; font-weight:bold;">Products</h2>
        </td>
    </tr>

    <tr>
        <td colspan="14" style="text-align:center;">

            <asp:DataList ID="DataList1" runat="server" RepeatColumns="5" 
                style="margin:auto;">

                <ItemTemplate>

                    <table style="
                        background:#fff;
                        border-radius:12px;
                        box-shadow:0 6px 15px rgba(0,0,0,0.15);
                        padding:15px;
                        margin:15px;
                        text-align:center;
                        transition:0.3s;
                    "
                    onmouseover="this.style.transform='scale(1.05)'"
                    onmouseout="this.style.transform='scale(1)'" class="auto-style3">

                        <tr>
                            <td style="padding-bottom:10px;">
                                <asp:ImageButton ID="ImageButton3" runat="server"
                                    Height="120px"
                                    Width="120px"
                                    ImageUrl='<%# Eval("Product_image") %>'
                                    CommandArgument='<%# Eval("Product_id") %>'
                                    OnCommand="ImageButton3_Command"
                                    style="
                                        border-radius:10px;
                                        object-fit:cover;
                                        box-shadow:0 4px 10px rgba(0,0,0,0.2);
                                    " />
                            </td>
                        </tr>

                        <tr>
                            <td style="
                                font-weight:bold;
                                font-size:16px;
                                color:#222;
                                padding-top:5px;">
                                <asp:Label ID="Label1" runat="server" 
                                    Text='<%# Eval("Product_name") %>'></asp:Label>
                            </td>
                        </tr>

                        <tr>
                            <td style="
                                color:#28a745;
                                font-weight:bold;
                                font-size:15px;
                                padding-top:5px;">
                                ₹ <asp:Label ID="Label2" runat="server" 
                                    Text='<%# Eval("Product_price") %>'></asp:Label>
                            </td>
                        </tr>

                        <tr>
                            <td style="
                                font-size:13px;
                                color:#555;
                                padding:8px 5px;">
                                <asp:Label ID="Label3" runat="server" 
                                    Text='<%# Eval("Product_desc") %>'></asp:Label>
                            </td>
                        </tr>

                    </table>

                </ItemTemplate>

            </asp:DataList>

        </td>
    </tr>


</table>
</asp:Content>

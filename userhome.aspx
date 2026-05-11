<%@ Page Title="" Language="C#" MasterPageFile="~/Site3.Master" AutoEventWireup="true" CodeBehind="userhome.aspx.cs" Inherits="PET_MART.userhome" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style1 {
        width: 100%;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1" style="
    width:100%;
    margin:30px auto;
">

    <tr>
        <td colspan="11" style="text-align:center; padding-bottom:20px;">
            <h2 style="color:#000;">Shop by Categories 🐾</h2>
        </td>
    </tr>

    <!-- 🔍 Search Added -->
    <tr>
        <td colspan="11" style="text-align:center; padding-bottom:20px;">
            <asp:TextBox ID="TextBox1" runat="server" placeholder="Search category..."
                style="padding:10px; width:250px; border-radius:8px; border:1px solid #ccc; outline:none;">
            </asp:TextBox>

            <asp:Button ID="Button1" runat="server" Text="Search"
                OnClick="Button1_Click"
                style="padding:10px 20px; margin-left:10px; border:none; border-radius:8px; background:#2c3e50; color:white; font-weight:600; cursor:pointer;">
            </asp:Button>
        </td>
    </tr>

    <tr>
        <td colspan="11" style="text-align:center;">

            <asp:DataList ID="DataList1" runat="server" RepeatColumns="5"
                style="margin:auto;">

                <ItemTemplate>

                    <table class="auto-style1" style="
                        width:180px;
                        margin:15px;
                        background:#fff;
                        border-radius:12px;
                        box-shadow:0 6px 15px rgba(0,0,0,0.1);
                        text-align:center;
                        padding:10px;
                        transition:0.3s;
                    ">

                        <tr>
                            <td>
                                <asp:ImageButton ID="ImageButton1" runat="server"
                                    Height="120px"
                                    Width="120px"
                                    ImageUrl='<%# Eval("Cat_image") %>'
                                    OnCommand="ImageButton1_Command"
                                    style="
                                        border-radius:10px;
                                        object-fit:cover;
                                        box-shadow:0 4px 10px rgba(0,0,0,0.2);
                                    " CommandArgument='<%# Eval("cat_id") %>' />
                            </td>
                        </tr>

                        <tr>
                            <td style="padding-top:10px;">
                                <asp:Label ID="Label1" runat="server"
                                    Text='<%# Eval("Cat_name") %>'
                                    style="
                                        font-size:18px;
                                        font-weight:600;
                                        color:#000;
                                    ">
                                </asp:Label>
                            </td>
                        </tr>

                        <tr>
                            <td style="padding-top:5px;">
                                <asp:Label ID="Label2" runat="server"
                                    Text='<%# Eval("Cat_desc") %>'
                                    style="
                                        font-size:13px;
                                        color:#666;
                                        display:block;
                                        padding:5px 10px;
                                    ">
                                </asp:Label>
                            </td>
                        </tr>

                    </table>

                </ItemTemplate>

            </asp:DataList>

        </td>
    </tr>

</table>
</table>
</asp:Content>

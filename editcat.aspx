<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="editcat.aspx.cs" Inherits="PET_MART.editcat" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="w-100" style="
    max-width:900px;
    margin:40px auto;
    background:#fff;
    padding:25px;
    border-radius:12px;
    box-shadow:0 8px 20px rgba(0,0,0,0.1);
">

    <tr>
        <td colspan="8" style="text-align:center; padding-bottom:20px;">
            <h2 style="color:#000; margin:0;">Manage Categories</h2>
        </td>
    </tr>

    <tr>
        <td></td><td></td><td></td>

        <td style="padding:10px;">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False"
                OnRowCancelingEdit="GridView1_RowCancelingEdit"
                OnRowEditing="GridView1_RowEditing"
                OnRowUpdating="GridView1_RowUpdating"

                style="
                    width:100%;
                    border-collapse:collapse;
                    text-align:center;
                "

               HeaderStyle-BorderColor="#ddd"
HeaderStyle-BorderStyle="Solid"
HeaderStyle-BorderWidth="1px"

                RowStyle-BackColor="#f9f9f9"
                AlternatingRowStyle-BackColor="#ffffff"

                BorderStyle="None"
                CellPadding="10"
            >

                <Columns>

                    <asp:CommandField ShowEditButton="True"
                        ControlStyle-ForeColor="black"
                        ControlStyle-Font-Bold="true" />

                    <asp:BoundField DataField="cat_name" HeaderText="Category Name" />

                    <asp:BoundField DataField="cat_desc" HeaderText="Category Description" />

                    <asp:TemplateField HeaderText="Image">
                        <EditItemTemplate>
                            <asp:FileUpload ID="FileUpload1" runat="server" />
                        </EditItemTemplate>

                        <ItemTemplate>
                            <asp:Image ID="Image1" runat="server"
                                ImageUrl='<%# Eval("cat_image") %>'
                                style="
                                    height:120px;
                                    width:120px;
                                    object-fit:cover;
                                    border-radius:10px;
                                    box-shadow:0 4px 10px rgba(0,0,0,0.2);
                                " />
                        </ItemTemplate>
                    </asp:TemplateField>

                </Columns>

            </asp:GridView>
        </td>

        <td></td><td></td><td></td>
    </tr>

</table>
</asp:Content>

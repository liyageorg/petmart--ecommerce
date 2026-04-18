<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="editpro.aspx.cs" Inherits="PET_MART.editpro" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="w-100">
        <style>
    /* Grid Styling */
    .grid-style {
        width: 90%;
        margin: 30px auto;
        border-collapse: collapse;
        font-family: Arial;
        background: #fff;
        box-shadow: 0 8px 20px rgba(0,0,0,0.1);
        border-radius: 10px;
        overflow: hidden;
    }

    /* Header */
    .grid-style th {
        background-color: #6c757d;
        color: #fff;
        padding: 12px;
        font-size: 15px;
        text-align: center;
    }

    /* Rows */
    .grid-style td {
        padding: 10px;
        text-align: center;
        border-bottom: 1px solid #ddd;
    }

    /* Alternate rows */
    .grid-style tr:nth-child(even) {
        background-color: #f8f9fa;
    }

    /* Hover */
    .grid-style tr:hover {
        background-color: #e9ecef;
        transition: 0.3s;
    }

    /* Buttons */
    .grid-style input[type="submit"] {
        background-color: #28a745;
        color: white;
        border: none;
        padding: 6px 12px;
        border-radius: 5px;
        cursor: pointer;
    }

    .grid-style input[type="submit"]:hover {
        background-color: #218838;
    }

    /* Image */
    .grid-style img {
        border-radius: 10px;
        transition: 0.3s;
    }

    .grid-style img:hover {
        transform: scale(1.1);
    }
</style>

<table class="w-100">
    <tr>
        <td>
            <asp:GridView ID="GridView1" runat="server"
                CssClass="grid-style"
                AutoGenerateColumns="False"
                DataKeyNames="product_id"
                OnRowCancelingEdit="GridView1_RowCancelingEdit"
                OnRowEditing="GridView1_RowEditing"
                OnRowUpdating="GridView1_RowUpdating">

                <Columns>

                    <asp:CommandField ShowEditButton="True" />

                    <asp:BoundField DataField="product_name" HeaderText="Product name" />
                    <asp:BoundField DataField="product_desc" HeaderText="Product description" />
                    <asp:BoundField DataField="product_price" HeaderText="Product price" />
                    <asp:BoundField DataField="product_stock" HeaderText="Product stock" />
                    <asp:BoundField DataField="product_status" HeaderText="Product status" />

                    <asp:BoundField />

                    <asp:TemplateField HeaderText="Product Image">
                        <ItemTemplate>
                            <asp:Image ID="Image1" runat="server"
                                ImageUrl='<%# Eval("Product_image") %>'
                                Height="100px"
                                Width="100px"
                                Style="border-radius:10px; object-fit:cover;" />
                        </ItemTemplate>

                        <EditItemTemplate>
                            <asp:FileUpload ID="FileUpload1" runat="server" />
                        </EditItemTemplate>
                    </asp:TemplateField>

                </Columns>

            </asp:GridView>
        </td>

        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>

</table>
</asp:Content>

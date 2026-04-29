<%@ Page Title="" Language="C#" MasterPageFile="~/Site3.Master" AutoEventWireup="true" CodeBehind="viewcart.aspx.cs" Inherits="PET_MART.viewcart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
    .cart-container {
        width: 90%;
        margin: 40px auto;
        padding: 20px;
        background: #f9f9f9;
        border-radius: 10px;
        box-shadow: 0 0 10px rgba(0,0,0,0.1);
    }

    .cart-title {
        text-align: center;
        font-size: 28px;
        font-weight: bold;
        margin-bottom: 20px;
        color: #333;
    }

    .gridview-style {
        width: 100%;
        border-collapse: collapse;
    }

    .gridview-style th {
        background-color: #4CAF50;
        color: white;
        padding: 10px;
        text-align: center;
    }

    .gridview-style td {
        padding: 10px;
        text-align: center;
        border-bottom: 1px solid #ddd;
    }

    .gridview-style tr:hover {
        background-color: #f1f1f1;
    }

    .confirm-btn {
        display: block;
        margin: 20px auto;
        padding: 10px 25px;
        font-size: 16px;
        background-color: #4CAF50;
        color: white;
        border: none;
        border-radius: 5px;
        cursor: pointer;
    }

    .confirm-btn:hover {
        background-color: #45a049;
    }
</style>

<div class="cart-container">

    <div class="cart-title">🛒 Your Cart</div>

    <asp:GridView ID="GridView1" runat="server" CssClass="gridview-style"
        AutoGenerateColumns="False" DataKeyNames="cart_id"
        OnRowCancelingEdit="GridView1_RowCancelingEdit"
        OnRowDeleting="GridView1_RowDeleting"
        OnRowEditing="GridView1_RowEditing"
        OnRowUpdating="GridView1_RowUpdating">

        <Columns>
            <asp:CommandField ShowEditButton="True" />
            <asp:CommandField ShowDeleteButton="True" />

            <asp:ImageField DataImageUrlField="Product_image" HeaderText="Image">
                <ControlStyle Height="80px" Width="120px" />
            </asp:ImageField>

            <asp:BoundField DataField="product_name" HeaderText="Product Name" />
            <asp:BoundField DataField="Product_price" HeaderText="Price" />
            <asp:BoundField DataField="Quantity" HeaderText="Quantity" />
            <asp:BoundField DataField="subtotal" HeaderText="Subtotal" />
        </Columns>

    </asp:GridView>

    <asp:Button ID="Button1" runat="server" CssClass="confirm-btn"
        OnClick="Button1_Click" Text="Confirm Shopping" />

</div>
</asp:Content>

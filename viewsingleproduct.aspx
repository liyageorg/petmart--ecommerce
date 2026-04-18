<%@ Page Title="" Language="C#" MasterPageFile="~/Site3.Master" AutoEventWireup="true" CodeBehind="viewsingleproduct.aspx.cs" Inherits="PET_MART.viewsingleproduct" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style1 {
        width: 100%;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    

    <asp:ScriptManager ID="ScriptManager1" runat="server" />

    <style>
        .product-table {
            width: 60%;
            margin: auto;
            background: #fff;
            border-radius: 15px;
            box-shadow: 0 10px 25px rgba(0,0,0,0.15);
            padding: 20px;
            font-family: Arial;
            text-align: center;
        }

        .product-img {
            border-radius: 12px;
            box-shadow: 0 4px 10px rgba(0,0,0,0.2);
        }

        .product-title {
            font-size: 22px;
            font-weight: bold;
            color: #333;
        }

        .product-label {
            font-size: 16px;
            color: #555;
            display: block;
            margin: 5px 0;
        }

        .price {
            font-size: 20px;
            font-weight: bold;
            color: #e67e22;
        }

        .qty-wrapper {
            display: flex;
            justify-content: center;
            align-items: center;
            margin: 10px 0;
        }

        .qty-box {
            width: 60px;
            height: 38px;
            text-align: center;
            border: 1px solid #ccc;
            font-size: 16px;
        }

        .btn-custom {
            background: #2c3e50;
            color: white;
            padding: 8px 15px;
            border: none;
            border-radius: 6px;
            cursor: pointer;
            font-weight: bold;
            margin: 5px;
            transition: 0.2s;
        }

        .btn-custom:hover {
            background: #1a252f;
        }

        .qty-btn {
            width: 40px;
            height: 38px;
            font-size: 20px;
            padding: 0;
        }

    </style>

    <table class="product-table">

        <tr>
            <td>
                <asp:Image ID="Image1" runat="server"
                    Height="220px" Width="240px"
                    CssClass="product-img" />
            </td>
        </tr>

        <tr>
            <td>
                <asp:Label ID="Label1" runat="server"
                    Text="Label" CssClass="product-title"></asp:Label>
            </td>
        </tr>

        <tr>
            <td>
                <asp:Label ID="Label2" runat="server"
                    Text="Label" CssClass="product-label"></asp:Label>
            </td>
        </tr>

        <tr>
            <td>
                <asp:Label ID="Label3" runat="server"
                    Text="₹ 0.00" CssClass="price"></asp:Label>
            </td>
        </tr>

        <!-- AJAX QUANTITY -->
        <tr>
            <td>

                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                    <ContentTemplate>

                        <div class="qty-wrapper">

                            <asp:Button ID="Button2" runat="server"
                                OnClick="Button2_Click"
                                Text="−"
                                CssClass="btn-custom qty-btn" />

                            <asp:TextBox ID="TextBox1" runat="server"
                                AutoPostBack="True"
                                OnTextChanged="TextBox1_TextChanged"
                                CssClass="qty-box"></asp:TextBox>

                            <asp:Button ID="Button1" runat="server"
                                OnClick="Button1_Click"
                                Text="+"
                                CssClass="btn-custom qty-btn" />

                        </div>

                    </ContentTemplate>
                </asp:UpdatePanel>

            </td>
        </tr>

        <tr>
            <td>
                <asp:Button ID="Button3" runat="server"
                    OnClick="Button3_Click"
                    Text="Add to Cart"
                    CssClass="btn-custom" />

                <asp:Button ID="Button4" runat="server"
                    OnClick="Button4_Click"
                    Text="View Cart"
                    CssClass="btn-custom" />
            </td>
        </tr>

        <tr>
            <td>
                <asp:Label ID="Label5" runat="server"
                    Text="Label" Visible="False"></asp:Label>
            </td>
        </tr>

        <tr>
            <td>
                <asp:Button ID="Button5" runat="server"
                    OnClick="Button5_Click"
                    PostBackUrl="~/userhome.aspx"
                    Text="Continue Shopping"
                    CssClass="btn-custom" />
            </td>
        </tr>

    </table>

</asp:Content>

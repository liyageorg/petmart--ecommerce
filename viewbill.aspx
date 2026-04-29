<%@ Page Title="" Language="C#" MasterPageFile="~/Site3.Master" AutoEventWireup="true" CodeBehind="viewbill.aspx.cs" Inherits="PET_MART.viewbill" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  <div style="width:75%; margin:40px auto; background:#ffffff; padding:30px; border-radius:12px; box-shadow:0 4px 15px rgba(0,0,0,0.1); font-family:Segoe UI;">

    <h2 style="text-align:center; color:#2c3e50; margin-bottom:25px;">Order Summary</h2>

    <!-- BILL DETAILS -->
    <div style="display:flex; justify-content:space-between; margin-bottom:20px;">
        <div>
            <b><asp:Label ID="Label1" runat="server" Text="Payement Id"></asp:Label> :</b>
            <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
        </div>

        <div>
            <b><asp:Label ID="Label3" runat="server" Text="Bill Date"></asp:Label> :</b>
            <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
        </div>
    </div>

    <hr style="border:1px solid #eee;" />

    <!-- CUSTOMER DETAILS -->
    <h4 style="color:#34495e; margin-top:15px;">Customer Details</h4>

    <div style="margin-top:10px;">
        <p><b><asp:Label ID="Label5" runat="server" Text="Name"></asp:Label> :</b>
        <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label></p>

        <p><b><asp:Label ID="Label7" runat="server" Text="Address"></asp:Label> :</b>
        <asp:Label ID="Label8" runat="server" Text="Label"></asp:Label></p>

        <p><b><asp:Label ID="Label9" runat="server" Text="Email"></asp:Label> :</b>
        <asp:Label ID="Label10" runat="server" Text="Label"></asp:Label></p>
    </div>

    <hr style="border:1px solid #eee;" />

    <!-- ORDER ITEMS -->
    <h4 style="color:#34495e;">Order Items</h4>

    <asp:GridView ID="GridView1" runat="server"
        Width="100%"
        AutoGenerateColumns="true"
        GridLines="None"
        style="margin-top:10px; border-radius:8px; overflow:hidden;"
        HeaderStyle-BackColor="#3498db"
        HeaderStyle-ForeColor="White"
        HeaderStyle-Font-Bold="true"
        RowStyle-BackColor="#f9f9f9"
        AlternatingRowStyle-BackColor="#ffffff"
        CellPadding="10">
    </asp:GridView>

    <hr style="border:1px solid #ddd;" />

    <!-- GRAND TOTAL -->
    <div style="display:flex; justify-content:space-between; align-items:center; margin-top:20px;">
        <h3 style="color:#2c3e50;">
            <asp:Label ID="Label17" runat="server" Text="Grand Total"></asp:Label> :
        </h3>

        <h3 style="color:#27ae60;">
            ₹ <asp:Label ID="Label18" runat="server" Text="Label"></asp:Label>
        </h3>
    </div>

    <!-- BUTTON -->
    <div style="text-align:right; margin-top:20px;">
        <asp:Button ID="Button1" runat="server"
            PostBackUrl="~/payment.aspx"
            Text="Pay Now"
            style="background:#27ae60; color:white; border:none; padding:12px 30px; border-radius:6px; font-size:16px; cursor:pointer;" />
    </div>

</div>
</asp:Content>

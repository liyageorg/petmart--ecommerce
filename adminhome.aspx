<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="adminhome.aspx.cs" Inherits="PET_MART.adminhome" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style1 {
        height: 50px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <table class="w-100">
    <div style="padding:40px;">

    <h2 style="color:#000; margin-bottom:25px;">Admin Actions</h2>

    <div style="display:flex; gap:20px; flex-wrap:wrap;">

        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/addcat.aspx"
            style="text-decoration:none;">
            <div style="
                padding:20px 30px;
                border:1px solid #ddd;
                border-radius:10px;
                background:#fff;
                color:#000;
                font-weight:600;
                box-shadow:0 4px 10px rgba(0,0,0,0.1);
                transition:0.3s;">
                ➕ Add Category
            </div>
        </asp:HyperLink>

        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/editcat.aspx"
            style="text-decoration:none;">
            <div style="
                padding:20px 30px;
                border:1px solid #ddd;
                border-radius:10px;
                background:#fff;
                color:#000;
                font-weight:600;
                box-shadow:0 4px 10px rgba(0,0,0,0.1);
                transition:0.3s;">
                ✏️ Edit Category
            </div>
        </asp:HyperLink>

        <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/addpro.aspx"
            style="text-decoration:none;">
            <div style="
                padding:20px 30px;
                border:1px solid #ddd;
                border-radius:10px;
                background:#fff;
                color:#000;
                font-weight:600;
                box-shadow:0 4px 10px rgba(0,0,0,0.1);
                transition:0.3s;">
                🐾 Add Product
            </div>
        </asp:HyperLink>

        <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/editpro.aspx"
            style="text-decoration:none;">
            <div style="
                padding:20px 30px;
                border:1px solid #ddd;
                border-radius:10px;
                background:#fff;
                color:#000;
                font-weight:600;
                box-shadow:0 4px 10px rgba(0,0,0,0.1);
                transition:0.3s;">
                🛠️ Edit Product
            </div>
        </asp:HyperLink>

        <!-- New HyperLink Added -->
        <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/viewfeedback.aspx"
            style="text-decoration:none;">
            <div style="
                padding:20px 30px;
                border:1px solid #ddd;
                border-radius:10px;
                background:#fff;
                color:#000;
                font-weight:600;
                box-shadow:0 4px 10px rgba(0,0,0,0.1);
                transition:0.3s;">
                💬 View Feedbacks
            </div>
        </asp:HyperLink>

        <!-- User Management HyperLink -->
<asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl="~/usermangement.aspx"
    style="text-decoration:none;">
    <div style="
        padding:20px 30px;
        border:1px solid #ddd;
        border-radius:10px;
        background:#fff;
        color:#000;
        font-weight:600;
        box-shadow:0 4px 10px rgba(0,0,0,0.1);
        transition:0.3s;">
        👥 User Management
    </div>
</asp:HyperLink>

    </div>

</div>
</table>
</asp:Content>
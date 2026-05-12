<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="usermangement.aspx.cs" Inherits="PET_MART.usermangement" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="User_id" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating">
       <Columns>

    <asp:CommandField HeaderText="Edit" ShowEditButton="True">
        <ControlStyle ForeColor="#2c3e50" Font-Bold="True" />
        <ItemStyle HorizontalAlign="Center" />
    </asp:CommandField>

    <asp:BoundField DataField="User_name" HeaderText="Name">
        <HeaderStyle BackColor="#2c3e50" ForeColor="White" Font-Bold="True" />
        <ItemStyle HorizontalAlign="Center" />
    </asp:BoundField>

    <asp:BoundField DataField="User_email" HeaderText="Email">
        <HeaderStyle BackColor="#2c3e50" ForeColor="White" Font-Bold="True" />
        <ItemStyle HorizontalAlign="Center" />
    </asp:BoundField>

    <asp:BoundField DataField="User_status" HeaderText="Status">
        <HeaderStyle BackColor="#2c3e50" ForeColor="White" Font-Bold="True" />
        <ItemStyle HorizontalAlign="Center" />
    </asp:BoundField>

    <asp:BoundField>
        <HeaderStyle BackColor="#2c3e50" ForeColor="White" />
    </asp:BoundField>

    <asp:TemplateField>
        <HeaderStyle BackColor="#2c3e50" ForeColor="White" Font-Bold="True" />
        <ItemStyle HorizontalAlign="Center" />
        <ItemTemplate>
            <asp:RadioButtonList ID="RadioButtonList1" runat="server" AutoPostBack="True"
                RepeatDirection="Horizontal"
                Style="gap:10px; font-weight:600;">
                <asp:ListItem>Active</asp:ListItem>
                <asp:ListItem>Inactive</asp:ListItem>
            </asp:RadioButtonList>
        </ItemTemplate>
    </asp:TemplateField>

    <asp:BoundField>
        <HeaderStyle BackColor="#2c3e50" ForeColor="White" />
    </asp:BoundField>

</Columns>
    </asp:GridView>
</asp:Content>

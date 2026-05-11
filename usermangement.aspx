<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="usermangement.aspx.cs" Inherits="PET_MART.usermangement" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="User_id" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating">
        <Columns>
             <asp:CommandField HeaderText="Edit" ShowEditButton="True">
                  </asp:CommandField>
            <asp:BoundField DataField="User_name" HeaderText="Name" />
             <asp:BoundField DataField="User_email" HeaderText="Email" />
            <asp:BoundField DataField="User_status" HeaderText="Status" />
            <asp:BoundField />
            <asp:TemplateField>
                            <ItemTemplate>
                                <asp:RadioButtonList ID="RadioButtonList1" runat="server" AutoPostBack="True">
                                    <asp:ListItem>Active</asp:ListItem>
                                    <asp:ListItem>Inactive</asp:ListItem>
                                </asp:RadioButtonList>
                            </ItemTemplate>
                        </asp:TemplateField>
             <asp:BoundField />
        </Columns>
    </asp:GridView>
</asp:Content>

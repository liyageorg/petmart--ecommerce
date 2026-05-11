<%@ Page Title="" Language="C#" MasterPageFile="~/Site3.Master" AutoEventWireup="true" CodeBehind="viewfeedback.aspx.cs" Inherits="PET_MART.viewfeedback" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 <table class="w-100" style="margin:40px auto; width:90%; border-collapse:collapse;">
    <tr>
        <td colspan="11" style="padding:25px; background:#ffffff; border-radius:15px; box-shadow:0 4px 15px rgba(0,0,0,0.12);">

            <asp:Label ID="Label1" runat="server" Text="User Feedbacks"
                Style="display:block; font-size:30px; font-weight:bold; color:#2c3e50; margin-bottom:25px; text-align:center;">
            </asp:Label>

            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False"
                Width="100%"
                CellPadding="12"
                GridLines="None"
                BorderStyle="None"
                Style="border-radius:12px; overflow:hidden; text-align:center; box-shadow:0 3px 10px rgba(0,0,0,0.08);">

                <HeaderStyle BackColor="#2c3e50" ForeColor="White" Font-Bold="True" Height="45px" />
                <RowStyle BackColor="#f8f9fa" ForeColor="#333333" Height="45px" />
                <AlternatingRowStyle BackColor="#ffffff" />
                <PagerStyle BackColor="#2c3e50" ForeColor="White" HorizontalAlign="Center" />

                <Columns>
                    <asp:BoundField DataField="User_name" HeaderText="Name" />
                    <asp:BoundField DataField="Feed_mesg" HeaderText="Feedback" />
                    <asp:TemplateField HeaderText="Reply">
                        <ItemTemplate>
                            <asp:LinkButton ID="LinkButton1" runat="server"
                                CommandArgument='<%# Eval("User_id") %>'
                                OnCommand="LinkButton1_Command"
                                Style="background:#3498db; color:white; padding:7px 16px; border-radius:20px; text-decoration:none; font-weight:600;">
                                Reply
                            </asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>

        </td>
    </tr>
</table>
</asp:Content>

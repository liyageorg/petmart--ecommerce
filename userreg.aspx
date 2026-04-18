<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="userreg.aspx.cs" Inherits="PET_MART.userreg" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style1 {
        height: 50px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="w-100" style="
    max-width:700px;
    margin:40px auto;
    background:#fff;
    padding:30px;
    border-radius:12px;
    box-shadow:0 8px 20px rgba(0,0,0,0.1);
">

    <tr>
        <td style="padding:10px;"></td>
        <td style="padding:10px;"></td>
        <td style="padding:10px;"></td>

        <td style="padding:10px;">
            <asp:Label ID="Label1" runat="server" Text="Name"
                style="color:#000; font-weight:600;"></asp:Label>
        </td>

        <td style="padding:10px;">
            <asp:TextBox ID="TextBox1" runat="server"
                style="width:250px; padding:8px; border:1px solid #ccc; border-radius:6px;"></asp:TextBox>
        </td>

        <td style="padding:10px;">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                ControlToValidate="TextBox1"
                ErrorMessage="Enter Name"
                style="color:red; font-size:13px;">
            </asp:RequiredFieldValidator>
        </td>
    </tr>

    <tr>
        <td></td><td></td><td></td>

        <td style="padding:10px;">
            <asp:Label ID="Label5" runat="server" Text="Address"
                style="color:#000; font-weight:600;"></asp:Label>
        </td>

        <td style="padding:10px;">
            <asp:TextBox ID="TextBox2" runat="server"
                style="width:250px; padding:8px; border:1px solid #ccc; border-radius:6px;"></asp:TextBox>
        </td>

        <td style="padding:10px;">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
                ControlToValidate="TextBox2"
                ErrorMessage="Enter Address"
                style="color:red; font-size:13px;">
            </asp:RequiredFieldValidator>
        </td>
    </tr>

    <tr>
        <td></td><td></td><td></td>

        <td style="padding:10px;">
            <asp:Label ID="Label6" runat="server" Text="Email"
                style="color:#000; font-weight:600;"></asp:Label>
        </td>

        <td style="padding:10px;">
            <asp:TextBox ID="TextBox3" runat="server"
                style="width:250px; padding:8px; border:1px solid #ccc; border-radius:6px;"></asp:TextBox>
        </td>

        <td style="padding:10px;">
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server"
                ControlToValidate="TextBox3"
                ErrorMessage="Enter valid email"
                ValidationExpression="^\w+([-.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$"
                style="color:red; font-size:13px;">
            </asp:RegularExpressionValidator>
        </td>
    </tr>

    <tr>
        <td></td><td></td><td></td>

        <td style="padding:10px;">
            <asp:Label ID="Label7" runat="server" Text="Pincode"
                style="color:#000; font-weight:600;"></asp:Label>
        </td>

        <td style="padding:10px;">
            <asp:TextBox ID="TextBox4" runat="server"
                style="width:250px; padding:8px; border:1px solid #ccc; border-radius:6px;"></asp:TextBox>
        </td>

        <td style="padding:10px;">
            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server"
                ControlToValidate="TextBox4"
                ErrorMessage="Invalid pincode"
                ValidationExpression="^[1-9][0-9]{5}$"
                style="color:red; font-size:13px;">
            </asp:RegularExpressionValidator>
        </td>
    </tr>

    <tr>
        <td></td><td></td><td></td>

        <td style="padding:10px;">
            <asp:Label ID="Label9" runat="server" Text="Username"
                style="color:#000; font-weight:600;"></asp:Label>
        </td>

        <td style="padding:10px;">
            <asp:TextBox ID="TextBox6" runat="server"
                style="width:250px; padding:8px; border:1px solid #ccc; border-radius:6px;"></asp:TextBox>
        </td>

        <td style="padding:10px;">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server"
                ControlToValidate="TextBox6"
                ErrorMessage="Required Username"
                style="color:red; font-size:13px;">
            </asp:RequiredFieldValidator>
        </td>
    </tr>

    <tr>
        <td></td><td></td><td></td>

        <td style="padding:10px;">
            <asp:Label ID="Label10" runat="server" Text="Password"
                style="color:#000; font-weight:600;"></asp:Label>
        </td>

        <td style="padding:10px;">
            <asp:TextBox ID="TextBox7" runat="server" TextMode="Password"
                style="width:250px; padding:8px; border:1px solid #ccc; border-radius:6px;"></asp:TextBox>
        </td>

        <td style="padding:10px;">
            <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server"
                ControlToValidate="TextBox7"
                ErrorMessage="Password must be strong"
                ValidationExpression="^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&]).{8,}$"
                style="color:red; font-size:13px;">
            </asp:RegularExpressionValidator>
        </td>
    </tr>

    <tr>
        <td></td><td></td><td></td>
        <td></td>

        <td style="padding:20px;">
            <asp:Button ID="Button1" runat="server" Text="Register"
                OnClick="Button1_Click"
                style="
                    background:#000;
                    color:#fff;
                    border:none;
                    padding:10px 25px;
                    border-radius:6px;
                    font-weight:600;
                    cursor:pointer;">
            </asp:Button>
        </td>
    </tr>

    <tr>
        <td></td><td></td><td></td>
        <td></td>

        <td>
            <asp:Label ID="Label4" runat="server" Visible="False"></asp:Label>
        </td>
    </tr>

</table>
</asp:Content>

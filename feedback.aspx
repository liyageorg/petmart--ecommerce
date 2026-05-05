<%@ Page Title="" Language="C#" MasterPageFile="~/Site3.Master" AutoEventWireup="true" CodeBehind="feedback.aspx.cs" Inherits="PET_MART.feedback" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
    body {
        background: linear-gradient(to right, #fdfbfb, #ebedee);
        font-family: 'Segoe UI', sans-serif;
    }

    .feedback-container {
        width: 520px;
        margin: 80px auto;
        padding: 35px;
        background: #ffffff;
        border-radius: 18px;
        box-shadow: 0 8px 30px rgba(0,0,0,0.15);
        text-align: center;
    }

    .heading {
        font-size: 30px;
        font-weight: 700;
        color: #333;
        margin-bottom: 5px;
    }

    .subheading {
        font-size: 14px;
        color: #777;
        margin-bottom: 25px;
    }

    .textbox {
        width: 100%;
        padding: 12px;
        border-radius: 10px;
        border: 1px solid #ddd;
        font-size: 14px;
        resize: none;
        transition: 0.3s;
    }

    .textbox:focus {
        border-color: #e4527e;
        outline: none;
        box-shadow: 0 0 5px rgba(228,82,126,0.3);
    }

    .btn {
        background: linear-gradient(45deg, #e4527e, #ff7aa2);
        color: white;
        padding: 12px 25px;
        border: none;
        border-radius: 25px;
        font-weight: bold;
        font-size: 15px;
        cursor: pointer;
        margin-top: 20px;
        transition: 0.3s;
    }

    .btn:hover {
        transform: translateY(-2px);
        box-shadow: 0 5px 15px rgba(0,0,0,0.2);
    }

    .msg {
        margin-top: 15px;
        color: #28a745;
        font-weight: 600;
    }
</style>

<div class="feedback-container">

    <!-- New Attractive Heading -->
    <div class="heading">💬 Share Your Feedback</div>
    <div class="subheading">We’d love to hear your thoughts to improve our service</div>

    <table class="w-100">

        <!-- ❌ Removed TextBox1 (as you said not needed) -->

        <tr>
            <td>
                <asp:TextBox ID="TextBox2" runat="server"
                    TextMode="MultiLine"
                    Rows="6"
                    CssClass="textbox"
                    placeholder="Write your feedback here...">
                </asp:TextBox>
            </td>
        </tr>

        <tr>
            <td>
                <asp:Button ID="Button1" runat="server"
                    Text="Submit Feedback"
                    CssClass="btn" OnClick="Button1_Click" />
            </td>
        </tr>

        <tr>
            <td>
                <asp:Label ID="Label1" runat="server"
                    Text="Label"
                    Visible="False"
                    CssClass="msg">
                </asp:Label>
            </td>
        </tr>

    </table>

</div>
</asp:Content>

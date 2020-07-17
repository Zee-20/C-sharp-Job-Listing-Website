<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WebApplication1.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Login Into Your Account</h1>
    <table style="width: 100%; height: 100px">
        <tr>
            <td style="width: 228px; height: 114px;"><strong>Username:</strong></td>
            <td style="height: 114px">
                <asp:TextBox ID="txtUsername" runat="server" OnTextChanged="txtUsername_TextChanged" Width="295px"></asp:TextBox>
            </td>
        </tr>
        
        <tr>
            <td style="width: 228px; height: 110px;"><strong>Password:</strong></td>
            <td style="height: 110px">
                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" Width="295px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 228px; height: 106px; text-align: center;">
                <asp:Label ID="lblMessage" runat="server" Text="[lblMessage]"></asp:Label>
            </td>
            <td style="height: 106px">
                <strong>
                <asp:Button ID="btnLogin" runat="server" OnClick="btnLogin_Click" Text="Login" style="font-weight: bold" Width="295px" />
                </strong>
                <br />
                <br />
               
            </td>
        </tr>
        <tr>
            <td style="width: 228px; height: 83px;">
                &nbsp;</td>
            <td style="height: 83px">
                <br />
                <br />
                <asp:LinkButton ID="newuserbutton" runat="server" OnClick="newuserbutton_Click">New User? Sign Up Here!</asp:LinkButton>
            </td>
        </tr>
    </table>
</asp:Content>

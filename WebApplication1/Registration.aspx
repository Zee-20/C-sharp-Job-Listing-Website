<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="WebApplication1.Registration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <h1 class="text-center">Registration</h1>
    <table class="w-100">
        <tr>
            <td style="width: 268px; height: 60px;">
                <strong>
                <asp:Label ID="Label1" runat="server" Text="Username :"></asp:Label>
                </strong>
            </td>
            <td style="height: 60px; width: 424px">
                <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtUsername"
                    ErrorMessage="Required Field!"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 268px; height: 60px;">
                <strong>
                <asp:Label ID="Label8" runat="server" Text="Password :"></asp:Label>
                </strong>
            </td>
            <td style="height: 60px; width: 424px">
                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
                    ControlToValidate="txtPassword"
                    ErrorMessage="Required Field!"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 268px; height: 60px;">
                <strong>Re-Type Password:</strong></td>
            <td style="height: 60px; width: 424px">
                <asp:TextBox ID="txtRePass" runat="server" TextMode="Password"></asp:TextBox>
                <asp:CompareValidator ID="CompareValidator1" runat="server" 
                    ControlToCompare="txtRePass"
                    ControlToValidate="txtPassword"
                    ErrorMessage="Password does not match!"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 268px; height: 60px;">
                <strong>
                <asp:Label ID="Label3" runat="server" Text="Email :"></asp:Label>
                </strong>
            </td>
            <td style="height: 60px; width: 424px">
                <asp:TextBox ID="txtEmail" runat="server" TextMode="Email"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="txtEmail"
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                    ErrorMessage="Wrong email format!"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 268px; height: 60px;">
                <strong>
                <asp:Label ID="Label4" runat="server" Text="Gender :"></asp:Label>
                </strong>
            </td>
            <td style="height: 60px; width: 424px">
                <asp:RadioButtonList ID="rdbGender" runat="server" Height="39px" Width="104px" OnSelectedIndexChanged="rdbGender_SelectedIndexChanged">
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                </asp:RadioButtonList>
                <asp:CustomValidator ID="CustomValidator1" runat="server" 
                    ControlToValidate="rdbGender"
                    ErrorMessage="Must choose a Gender"></asp:CustomValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 268px; height: 60px;">
                <strong>
                <asp:Label ID="Label6" runat="server" Text="Country :"></asp:Label>
                </strong>
            </td>
            <td style="height: 60px; width: 424px">
                <asp:DropDownList ID="ddlCountry" runat="server">
                    <asp:ListItem>Malaysia</asp:ListItem>
                    <asp:ListItem>Singapore</asp:ListItem>
                    <asp:ListItem>Taiwan</asp:ListItem>
                    <asp:ListItem Value="Pakistan"></asp:ListItem>
                    <asp:ListItem Value="Bangladesh"></asp:ListItem>
                    <asp:ListItem Value="India"></asp:ListItem>
                    <asp:ListItem Value="Malaysia"></asp:ListItem>
                    <asp:ListItem Value="Singapore"></asp:ListItem>              
					<asp:ListItem Value="America"></asp:ListItem>
					<asp:ListItem Value="Australia"></asp:ListItem>
					<asp:ListItem Value="UK"></asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td style="width: 268px; height: 61px;">
                <strong>
                <asp:Label ID="Label5" runat="server" Text="User type :"></asp:Label>
                </strong>
            </td>
            <td style="height: 61px; width: 424px">
                <asp:DropDownList ID="ddlUserType" runat="server">
                    <asp:ListItem Value="Guest"></asp:ListItem>
                    <asp:ListItem Value="Admin"></asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td style="width: 268px; height: 61px;">
                </td>
            <td style="height: 61px; width: 424px">
                <asp:Button ID="btnRegister" runat="server" OnClick="btnRegister_Click" Text="Register" style="font-weight: bold" />
                <strong>
                <asp:Button ID="btnReset" runat="server" OnClick="btnReset_Click" Text="Reset" style="font-weight: bold" />
                </strong>
            </td>
        </tr>
        <tr>
            <td style="width: 268px">
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [UserRegistration]"></asp:SqlDataSource>
            </td>
            <td style="width: 424px">
                <asp:ValidationSummary ID="ValidationSummary1" 
                    HeaderText="One or more fields were entered incorrectly!"
                    ShowMessageBox="true"
                    runat="server" />
            </td>
        </tr>
    </table>
</asp:Content>

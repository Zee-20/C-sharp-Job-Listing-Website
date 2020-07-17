<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Jobs.aspx.cs" Inherits="WebApplication1.ShowGears" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <h1 style="text-align: center">Select Your Preferred Job</h1>
    <h3 style="text-align: center">Programming &amp; Coding</h3>
    <table class="nav-justified">
        <tr>
            <td style="width: 318px">
                &nbsp;</td>
            <td style="width: 338px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 318px; text-align: center;">
                <asp:Image ID="imgProd" runat="server" Height="200px" Width="200px" />
            </td>
            <td style="width: 338px; text-align: center">
                <asp:Image ID="imgProd0" runat="server" Height="200px" Width="200px" style="margin-left: 0px" />
            </td>
            <td style="text-align: center">
                <asp:Image ID="imgProd1" runat="server" Height="200px" Width="200px" />
            </td>
        </tr>
        <tr>
            <td style="width: 318px; height: 22px; text-align: center;">
                <asp:Label ID="lblName" runat="server"></asp:Label>
            </td>
            <td style="width: 338px; height: 22px; text-align: center">
                <asp:Label ID="lblName0" runat="server"></asp:Label>
            </td>
            <td style="width: 338px; height: 22px; text-align: center">
                <asp:Label ID="lblName5" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width: 318px; text-align: center;">
                <asp:Label ID="lblPrice" runat="server"></asp:Label>
            </td>
            <td style="width: 338px; text-align: center">
                <asp:Label ID="lblPrice0" runat="server"></asp:Label>
            </td>
            <td style="width: 338px; text-align: center">
                <asp:Label ID="lblPrice5" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width: 318px; text-align: center;">
                <asp:Label ID="lblType" runat="server"></asp:Label>
            </td>
            <td style="width: 338px; text-align: center">
                <asp:Label ID="lblType0" runat="server"></asp:Label>
            </td>
            <td style="width: 338px; text-align: center">
                <asp:Label ID="lblType5" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width: 318px; text-align: center;">
                <asp:Button ID="btnbuy1" runat="server" Text="APPLY" CssClass="col-xs-offset-0" Height="30px" OnClick="Button1_Click" Width="192px" />
            </td>
            <td style="width: 338px; text-align: center">
                <asp:Button ID="btnbuy2" runat="server" Text="APPLY" Height="30px" OnClick="btnbuy2_Click" Width="190px" />
            </td>
            <td style="text-align: center">
                <asp:Button ID="btnbuy3" runat="server" Text="APPLY" Height="30px" OnClick="btnbuy3_Click" Width="192px" />
            </td>
        </tr>
        <tr>
            <td style="text-align: center; height: 64px;" colspan="3">
                <h3>Belts</h3>
            </td>
        </tr>
        <tr>
            <td style="width: 318px; text-align: center;">
                <asp:Image ID="imgProd2" runat="server" Height="200px" Width="200px" />
            </td>
            <td style="width: 338px; text-align: center">
                <asp:Image ID="imgProd3" runat="server" Height="200px" Width="200px" />
            </td>
            <td style="text-align: center">
                <asp:Image ID="imgProd4" runat="server" Height="200px" Width="200px" />
            </td>
        </tr>
        <tr>
            <td style="width: 318px; text-align: center;">
                <asp:Label ID="lblName1" runat="server"></asp:Label>
            </td>
            <td style="width: 338px; text-align: center">
                <asp:Label ID="lblName2" runat="server"></asp:Label>
            </td>
            <td style="width: 338px; text-align: center">
                <asp:Label ID="lblName6" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width: 318px; height: 22px; text-align: center;">
                <asp:Label ID="lblPrice1" runat="server"></asp:Label>
            </td>
            <td style="width: 338px; height: 22px; text-align: center">
                <asp:Label ID="lblPrice2" runat="server"></asp:Label>
            </td>
            <td style="width: 338px; height: 22px; text-align: center">
                <asp:Label ID="lblPrice6" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width: 318px; text-align: center;">
                <asp:Label ID="lblType1" runat="server"></asp:Label>
            </td>
            <td style="width: 338px; text-align: center">
                <asp:Label ID="lblType2" runat="server"></asp:Label>
            </td>
            <td style="width: 338px; text-align: center">
                <asp:Label ID="lblType6" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width: 318px; text-align: center;">
                <asp:Button ID="btnbuy4" runat="server" Text="APPLY" Height="30px" OnClick="btnbuy4_Click" Width="192px" />
            </td>
            <td style="width: 338px; text-align: center">
                <asp:Button ID="Button5" runat="server" Text="APPLY" Height="30px" OnClick="Button5_Click" Width="192px" />
            </td>
            <td style="text-align: center">
                <asp:Button ID="btnb" runat="server" Text="APPLY" Height="30px" OnClick="btnb_Click" Width="192px" />
            </td>
        </tr>
        <tr>
            <td style="text-align: center; height: 80px;" colspan="3">
                <h3>Helmets</h3>
            </td>
        </tr>
        <tr>
            <td style="width: 318px; height: 60px; text-align: center;">
                <asp:Image ID="imgProd5" runat="server" Height="200px" Width="200px" />
            </td>
            <td style="width: 338px; height: 60px; text-align: center">
                <asp:Image ID="imgProd6" runat="server" Height="200px" Width="200px" />
            </td>
            <td style="height: 60px; text-align: center">
                <asp:Image ID="imgProd7" runat="server" Height="200px" Width="200px" />
            </td>
        </tr>
        <tr>
            <td style="width: 318px; height: 22px; text-align: center;">
                <asp:Label ID="lblName3" runat="server"></asp:Label>
            </td>
            <td style="width: 338px; height: 22px; text-align: center">
                <asp:Label ID="lblName4" runat="server"></asp:Label>
            </td>
            <td style="width: 338px; text-align: center">
                <asp:Label ID="lblName7" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width: 318px; text-align: center;">
                <asp:Label ID="lblPrice3" runat="server"></asp:Label>
            </td>
            <td style="width: 338px; text-align: center">
                <asp:Label ID="lblPrice4" runat="server"></asp:Label>
            </td>
            <td style="width: 338px; height: 22px; text-align: center">
                <asp:Label ID="lblPrice7" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width: 318px; text-align: center;">
                <asp:Label ID="lblType3" runat="server"></asp:Label>
            </td>
            <td style="width: 338px; text-align: center">
                <asp:Label ID="lblType4" runat="server"></asp:Label>
            </td>
            <td style="width: 338px; text-align: center">
                <asp:Label ID="lblType7" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width: 318px; text-align: center;">
                <asp:Button ID="btnbuy6" runat="server" Text="APPLY" Height="30px" OnClick="btnbuy6_Click" Width="192px" />
            </td>
            <td style="width: 338px; text-align: center">
                <asp:Button runat="server" Text="APPLY" Height="30px" OnClick="Button4_Click" Width="192px" />
            </td>
            <td style="text-align: center">
                <asp:Button ID="Button9" runat="server" Text="APPLY" Height="30px" OnClick="Button9_Click" Width="192px" />
            </td>
        </tr>
    </table>
   
</asp:Content>

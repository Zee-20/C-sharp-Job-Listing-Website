<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="JobsForm.aspx.cs" Inherits="WebApplication1.Customize" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1 style="text-align: center; color: #CC3300;">Customize Job </h1>
    <table style="width: 100%; height: 500px">
        <tr>
            <td style="width: 274px"><strong>Job ID: </strong></td>
            <td>
                <asp:TextBox ID="txtJobId" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>
                <asp:Button ID="btnSearchId" runat="server" OnClick="btnSearchId_Click" style="font-weight: bold" Text="Search " />
                </strong>
            </td>
        </tr>
        <tr>
            <td style="width: 274px"><strong>
                <asp:Label ID="Label2" runat="server" Text="Job Name:"></asp:Label>
                </strong></td>
            <td>
                <asp:TextBox ID="txtJobName" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 274px"><strong>
                <asp:Label ID="Label3" runat="server" Text="Job Pay:"></asp:Label>
                </strong></td>
            <td>
                <asp:TextBox ID="txtJobPay" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 274px"><strong>
                <asp:Label ID="Label4" runat="server" Text="Job Type:"></asp:Label>
                </strong></td>
            <td>
                <asp:DropDownList ID="ddlJType" runat="server">
                    <asp:ListItem Value="Programmin/Coding"></asp:ListItem>
                    <asp:ListItem Value="Business"></asp:ListItem>
                    <asp:ListItem Value="Engineering"></asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td style="width: 274px"><strong>
                <asp:Label ID="Label5" runat="server" Text="Image"></asp:Label>
                </strong></td>
            <td>
                <asp:FileUpload ID="fuJobImg" runat="server" />
            </td>
        </tr>
        <tr>
            <td style="width: 274px">&nbsp;</td>
            <td>
                <asp:Button ID="btnAdd" runat="server" OnClick="btnAdd_Click" Text="Add Job" />
                <asp:Button ID="btnUpdate" runat="server" OnClick="btnUpdate_Click" Text="Update Job" />
            </td>
        </tr>
        <tr>
            <td style="width: 274px">&nbsp;</td>
            <td>
                <asp:Button ID="btnReset" runat="server" Text="Reset Job" OnClick="btnReset_Click1" />
                <asp:Button ID="btnDelete" runat="server" OnClick="btnDelete_Click" Text="Delete Job" />
            </td>
        </tr>
        <tr>
            <td style="width: 274px">
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" OnSelecting="SqlDataSource1_Selecting" SelectCommand="SELECT * FROM [Job]"></asp:SqlDataSource>
            </td>
            <td>
                <asp:Label ID="lblMessage" runat="server"></asp:Label>
            </td>
        </tr>
    </table>
    <h2>View Job Records</h2>
    <table class="w-100" border="1" style="background-color: #FFFFCC">
        <tr style="font-weight: bold;" >
            <td style="width: 195px">Job ID</td>
            <td class="modal-sm" style="width: 280px">Job Name</td>
            <td style="width: 264px">Job Pay</td>
            <td style="width: 297px">Job Type</td>

        </tr>
        <%=fetchData()%>
    </table>
</asp:Content>

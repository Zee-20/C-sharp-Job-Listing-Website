<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ViewJobs.aspx.cs" Inherits="WebApplication1.ViewGears" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <h1 style="text-align: center; color: #CC3300">DETAILS OF ALL Jobs</h1>
     <table class="w-100" border="1" style="background-color: #FFFFCC;">
        <tr style="font-weight: bold;" >
            <td style="width: 141px; height: 43px; text-align: center;" class="text-left">Gear ID</td>
            <td class="modal-sm" style="width: 152px; height: 43px; text-align: center;">Gear Name</td>
            <td class="modal-sm" style="width: 157px; height: 43px; text-align: center;">Gear Price</td>
            <td style="height: 43px; width: 174px; text-align: center;" class="text-left">Gear Type</td>
            
          </tr>
            <%=fetchdata() %>
     
    </table>
</asp:Content>

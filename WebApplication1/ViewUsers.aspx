<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ViewUsers.aspx.cs" Inherits="WebApplication1.ViewUsers" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <h1>USER DETAILS</h1>
     <table class="w-100" border="1" style="background-color: #FFFFCC">
        <tr style="font-weight: bold;" >
            <td class="modal-sm"style="width: 141px; height: 60px; text-align: center;">User ID</td>
            <td class="modal-sm" style="width: 152px; height: 60px; text-align: center;">UserName</td>
            <td class="modal-sm" style="width: 157px; height: 60px; text-align: center;">Password</td>
            <td class="modal-sm" style="width: 157px; height: 60px; text-align: center;">Re-Password</td>

              
            <td class="modal-sm" style="width: 157px; height: 60px; text-align: center;">Email</td>

              
            <td class="modal-sm" style="width: 157px; height: 60px; text-align: center; font-weight: bold;">Gender</td>

              
            <td class="modal-sm" style="width: 157px; height: 60px; text-align: center; font-weight: bold;">Country</td>

              
            <td class="modal-sm" style="width: 157px; height: 60px; text-align: center; font-weight: bold;">User Type</td>

              
          </tr>
         <%=fetchdata()%>
     
    </table>
&nbsp;
</asp:Content>

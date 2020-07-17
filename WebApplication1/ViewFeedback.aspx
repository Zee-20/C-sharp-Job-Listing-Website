<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ViewFeedback.aspx.cs" Inherits="WebApplication1.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
	
     <h1>FeedBack</h1>
     <table class="w-100" border="1" style="background-color: #FFFFCC">
        <tr style="font-weight: bold;" >
			<td class="modal-sm"style="width: 141px; height: 60px; text-align: center;">ID</td>
            <td class="modal-sm"style="width: 141px; height: 60px; text-align: center;">Name</td>
            <td class="modal-sm" style="width: 152px; height: 60px; text-align: center;">Email</td>
            <td class="modal-sm" style="width: 157px; height: 60px; text-align: center;">Subject</td>
            <td class="modal-sm" style="width: 157px; height: 60px; text-align: center;">Message</td>
          
              
          </tr>
         <%=fetchdata()%>
     
    </table>
&nbsp;
</asp:Content>


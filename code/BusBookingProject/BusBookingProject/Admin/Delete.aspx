<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Delete.aspx.cs" Inherits="BusBookingProject.Admin.Delete" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <style type="text/css">
        .auto-style1 {
            margin-left: 218px;
        }
        .auto-style2 {
            text-align: center;
            margin-left: 285px;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
      <br />
 <br />
  <h3 style="text-align:center">Delete Route Details</h3>
      <br />
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <asp:Label ID="Label1" runat="server" Font-Size="Large" Text="Enter Route Id"></asp:Label>
      <asp:TextBox ID="TextBox2" runat="server" BackColor="White" BorderColor="Black" BorderStyle="Solid" ForeColor="Black" ValidationGroup="vgRegister" Width="70%" CssClass="auto-style1" ></asp:TextBox>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="Enter only numeric values" ForeColor="Red" ValidationExpression="^\d{5}$"></asp:RegularExpressionValidator>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="Enter any route id" ForeColor="Red" ValidationGroup="vgRegister"></asp:RequiredFieldValidator>
    <br />
&nbsp;&nbsp;
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click1" Text="Delete" BackColor="Red" CssClass="auto-style2" Width="57%" />
      <br />
      <br />
          <br />
 <br />
                 <br />
 <br />
                 <br />
 <br />
                 <br />
 <br />
                              
    
</asp:Content>

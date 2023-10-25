<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Feedback.aspx.cs" Inherits="BusBookingProject.Admin.Feedback" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
          .auto-style1 {
            width: 217px;
        }
        .auto-style2 {
            width: 290px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <br />
    <br />
    <br />
    <br />
    
    
    <h4 style="text-align:center">User FeedBack</h4>
    <table class="nav-justified">
        <tr>
            <td colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/Admin/UpdateComment.aspx" BackColor="#999999" BorderColor="Black" ForeColor="Black" Height="25px" Width="55px">Update</asp:LinkButton>
            </td>
            </tr>
        <tr>
            <td class="auto-style1">&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Delete</td>
            <td class="auto-style2">
                <asp:TextBox ID="TextBox2" runat="server" Width="155px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
            <td>
                <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Delete" CssClass="col-xs-offset-0" BackColor="Red" Width="50%" />
            </td>
        </tr>
    </table>
    <asp:Repeater ID="d1" runat="server">
    <HeaderTemplate>
        <table class="table table-striped table-bordered">
            <tr>
                <th>Customer Name</th>
                <th>Rating</th>
                <th>Comments</th>
                <th>Bus Image</th>
            </tr>
    </HeaderTemplate>
    <ItemTemplate>
            <tr>
                <td><%# Eval("CustomerName") %></td>
                <td><%# Eval("rating") %></td>
                <td><%# Eval("comments") %></td>
                <td>
                    <img src="../<%# Eval("busImage") %>" alt='' style="width:50%; height:50%">
                </td>
            </tr>
    </ItemTemplate>
    <FooterTemplate>
        </table>
    </FooterTemplate>
</asp:Repeater>
</asp:Repeater>
</asp:Content>

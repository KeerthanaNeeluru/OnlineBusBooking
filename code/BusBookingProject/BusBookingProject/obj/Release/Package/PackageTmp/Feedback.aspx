<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Feedback.aspx.cs" Inherits="BusBookingProject.Feedback" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            margin-left: 281px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <br />
    <br />
    <h4 style="text-align:center">User FeedBack</h4>
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="FeedbackId" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" AllowPaging="True" CssClass="auto-style1" Width="755px">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
          
            <asp:BoundField DataField="FeedbackId" HeaderText="FeedbackId" InsertVisible="False" ReadOnly="True" SortExpression="FeedbackId" />
            <asp:BoundField DataField="CustomerName" HeaderText="CustomerName" SortExpression="CustomerName" />
            <asp:BoundField DataField="rating" HeaderText="rating" SortExpression="rating" />
            <asp:BoundField DataField="comments" HeaderText="comments" SortExpression="comments" />
            <asp:BoundField DataField="busImage" HeaderText="busImage" SortExpression="busImage" />
              <asp:CommandField ShowDeleteButton="True" />
        </Columns>
        <EditRowStyle BackColor="#999999" />
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#E9E7E2" />
        <SortedAscendingHeaderStyle BackColor="#506C8C" />
        <SortedDescendingCellStyle BackColor="#FFFDF8" />
        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:OnlineBusBookingConnectionString %>" DeleteCommand="DELETE FROM [Feedback] WHERE [FeedbackId] = @FeedbackId" InsertCommand="INSERT INTO [Feedback] ([CustomerName], [rating], [comments], [busImage]) VALUES (@CustomerName, @rating, @comments, @busImage)" SelectCommand="SELECT * FROM [Feedback]" UpdateCommand="UPDATE [Feedback] SET [CustomerName] = @CustomerName, [rating] = @rating, [comments] = @comments, [busImage] = @busImage WHERE [FeedbackId] = @FeedbackId">
        <DeleteParameters>
            <asp:Parameter Name="FeedbackId" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="CustomerName" Type="String" />
            <asp:Parameter Name="rating" Type="Int32" />
            <asp:Parameter Name="comments" Type="String" />
            <asp:Parameter Name="busImage" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="CustomerName" Type="String" />
            <asp:Parameter Name="rating" Type="Int32" />
            <asp:Parameter Name="comments" Type="String" />
            <asp:Parameter Name="busImage" Type="String" />
            <asp:Parameter Name="FeedbackId" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
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
  <br />
  <br />
</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="UpdateComment.aspx.cs" Inherits="BusBookingProject.Admin.UpdateComment" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            margin-left: 126px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <br />
    <br />
    <br />
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="FeedbackId" DataSourceID="SqlDataSource1" CssClass="auto-style1" Width="699px">
        <Columns>
            
            <asp:BoundField DataField="FeedbackId" HeaderText="FeedbackId" InsertVisible="False" ReadOnly="True" SortExpression="FeedbackId" />
            <asp:BoundField DataField="CustomerName" HeaderText="CustomerName" SortExpression="CustomerName" />
            <asp:BoundField DataField="rating" HeaderText="rating" SortExpression="rating" />
            <asp:BoundField DataField="comments" HeaderText="comments" SortExpression="comments" />
            <asp:CommandField ShowDeleteButton="True" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:OnlineBusBookingConnectionString %>" DeleteCommand="DELETE FROM [Feedback] WHERE [FeedbackId] = @FeedbackId" InsertCommand="INSERT INTO [Feedback] ([CustomerName], [rating], [comments]) VALUES (@CustomerName, @rating, @comments)" SelectCommand="SELECT [FeedbackId], [CustomerName], [rating], [comments] FROM [Feedback]" UpdateCommand="UPDATE [Feedback] SET [CustomerName] = @CustomerName, [rating] = @rating, [comments] = @comments WHERE [FeedbackId] = @FeedbackId">
        <DeleteParameters>
            <asp:Parameter Name="FeedbackId" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="CustomerName" Type="String" />
            <asp:Parameter Name="rating" Type="Int32" />
            <asp:Parameter Name="comments" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="CustomerName" Type="String" />
            <asp:Parameter Name="rating" Type="Int32" />
            <asp:Parameter Name="comments" Type="String" />
            <asp:Parameter Name="FeedbackId" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
&nbsp;<br />
</asp:Content>

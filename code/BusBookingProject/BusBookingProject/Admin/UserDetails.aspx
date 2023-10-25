<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="UserDetails.aspx.cs" Inherits="BusBookingProject.Admin.UserDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            margin-left: 95px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br /><br />
    <br />
     <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/Admin/Feedback.aspx">View User FeedBack</asp:LinkButton>

     <br /><br />
        <h4 style="text-align:center">User Details</h4>
     <br /><br />
    

<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="regId" DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" GridLines="None" CssClass="auto-style1" Width="977px">
    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
    <Columns>
       
        <asp:BoundField DataField="regId" HeaderText="regId" InsertVisible="False" ReadOnly="True" SortExpression="regId" />
        <asp:BoundField DataField="Fname" HeaderText="Fname" SortExpression="Fname" />
        <asp:BoundField DataField="Lname" HeaderText="Lname" SortExpression="Lname" />
        <asp:BoundField DataField="EmailId" HeaderText="EmailId" SortExpression="EmailId" />
        <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
        <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
        <asp:BoundField DataField="Picode" HeaderText="Picode" SortExpression="Picode" />
        <asp:BoundField DataField="Contact" HeaderText="Contact" SortExpression="Contact" />
        <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
        <asp:BoundField DataField="CreatedDate" HeaderText="CreatedDate" SortExpression="CreatedDate" />
         <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
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
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:OnlineBusBookingConnectionString3 %>" DeleteCommand="DELETE FROM [Registration] WHERE [regId] = @original_regId" InsertCommand="INSERT INTO [Registration] ([Fname], [Lname], [EmailId], [Address], [City], [Picode], [Contact], [Password], [CreatedDate]) VALUES (@Fname, @Lname, @EmailId, @Address, @City, @Picode, @Contact, @Password, @CreatedDate)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Registration]" UpdateCommand="UPDATE [Registration] SET [Fname] = @Fname, [Lname] = @Lname, [EmailId] = @EmailId, [Address] = @Address, [City] = @City, [Picode] = @Picode, [Contact] = @Contact, [Password] = @Password, [CreatedDate] = @CreatedDate WHERE [regId] = @original_regId">
    <DeleteParameters>
        <asp:Parameter Name="original_regId" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="Fname" Type="String" />
        <asp:Parameter Name="Lname" Type="String" />
        <asp:Parameter Name="EmailId" Type="String" />
        <asp:Parameter Name="Address" Type="String" />
        <asp:Parameter Name="City" Type="String" />
        <asp:Parameter Name="Picode" Type="String" />
        <asp:Parameter Name="Contact" Type="String" />
        <asp:Parameter Name="Password" Type="String" />
        <asp:Parameter Name="CreatedDate" Type="DateTime" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="Fname" Type="String" />
        <asp:Parameter Name="Lname" Type="String" />
        <asp:Parameter Name="EmailId" Type="String" />
        <asp:Parameter Name="Address" Type="String" />
        <asp:Parameter Name="City" Type="String" />
        <asp:Parameter Name="Picode" Type="String" />
        <asp:Parameter Name="Contact" Type="String" />
        <asp:Parameter Name="Password" Type="String" />
        <asp:Parameter Name="CreatedDate" Type="DateTime" />
        <asp:Parameter Name="original_regId" Type="Int32" />
    </UpdateParameters>
</asp:SqlDataSource>


</asp:Content>

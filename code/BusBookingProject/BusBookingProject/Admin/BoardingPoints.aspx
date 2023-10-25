<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="BoardingPoints.aspx.cs" Inherits="BusBookingProject.Admin.BoardingPoints" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            margin-left: 378px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

   <br />
    <br /><br />
    <h3 style="text-align:center">Boarding Points</h3>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="StandId" DataSourceID="SqlDataSource1" CssClass="auto-style1" Width="581px" CellPadding="2" CellSpacing="3">
            <Columns>
               
                <asp:BoundField DataField="StandId" HeaderText="StandId" InsertVisible="False" ReadOnly="True" SortExpression="StandId" />
                <asp:BoundField DataField="RouteId" HeaderText="RouteId" SortExpression="RouteId" />
                <asp:BoundField DataField="PlaceName" HeaderText="PlaceName" SortExpression="PlaceName" />
                <asp:BoundField DataField="PlaceTime" HeaderText="PlaceTime" SortExpression="PlaceTime" />
                <asp:BoundField DataField="BusID" HeaderText="BusID" SortExpression="BusID" />
                 <asp:CommandField ShowDeleteButton="True" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:OnlineBusBookingConnectionString2 %>" DeleteCommand="DELETE FROM [PickUpStand] WHERE [StandId] = @StandId" InsertCommand="INSERT INTO [PickUpStand] ([RouteId], [PlaceName], [PlaceTime], [BusID]) VALUES (@RouteId, @PlaceName, @PlaceTime, @BusID)" SelectCommand="SELECT * FROM [PickUpStand]" UpdateCommand="UPDATE [PickUpStand] SET [RouteId] = @RouteId, [PlaceName] = @PlaceName, [PlaceTime] = @PlaceTime, [BusID] = @BusID WHERE [StandId] = @StandId">
            <DeleteParameters>
                <asp:Parameter Name="StandId" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="RouteId" Type="Int32" />
                <asp:Parameter Name="PlaceName" Type="String" />
                <asp:Parameter Name="PlaceTime" Type="String" />
                <asp:Parameter Name="BusID" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="RouteId" Type="Int32" />
                <asp:Parameter Name="PlaceName" Type="String" />
                <asp:Parameter Name="PlaceTime" Type="String" />
                <asp:Parameter Name="BusID" Type="Int32" />
                <asp:Parameter Name="StandId" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>

</asp:Content>

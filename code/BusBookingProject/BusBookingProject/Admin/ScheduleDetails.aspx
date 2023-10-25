<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="ScheduleDetails.aspx.cs" Inherits="BusBookingProject.Admin.ScheduleDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            margin-left: 40px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <br />
<br />    <br />
&nbsp;
        <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/Admin/UpdateBusSchedule.aspx">Reschedule</asp:LinkButton>
<br />
    <h4 style="text-align:center">Bus Schedule Details</h4>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" CssClass="auto-style1" Width="931px" AllowPaging="True">
    <Columns>
        <asp:BoundField DataField="ScheduleId" HeaderText="ScheduleId" InsertVisible="False" ReadOnly="True" SortExpression="ScheduleId" />
        <asp:BoundField DataField="BusId" HeaderText="BusId" SortExpression="BusId" />
        <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
        <asp:BoundField DataField="Fare" HeaderText="Fare" SortExpression="Fare" />
        <asp:BoundField DataField="EstimatedTime" HeaderText="EstimatedTime" SortExpression="EstimatedTime" />
        <asp:BoundField DataField="ArivalTime" HeaderText="ArivalTime" SortExpression="ArivalTime" />
        <asp:BoundField DataField="DepartureTime" HeaderText="DepartureTime" SortExpression="DepartureTime" />
        <asp:BoundField DataField="RouteID" HeaderText="RouteID" SortExpression="RouteID" />
        <asp:BoundField DataField="BookedSeats" HeaderText="BookedSeats" SortExpression="BookedSeats" />
        <asp:BoundField DataField="AvailableSeats" HeaderText="AvailableSeats" SortExpression="AvailableSeats" />
    </Columns>
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:OnlineBusBookingConnectionString2 %>" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [ScheduleMaster]">
</asp:SqlDataSource>
&nbsp;<br />
 <br />
     <br />
 <br />
        <br />
<br />
       
</asp:Content>

    <%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="BookingReport.aspx.cs" Inherits="BusBookingProject.Admin.BookingReport" %>
    <asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
        <style type="text/css">
            .auto-style1 {
                display: block;
                padding: 6px 12px;
                font-size: 14px;
                line-height: 1.428571429;
                color: #555;
                vertical-align: middle;
                background-color: #fff;
                background-image: none;
                border: 1px solid #ccc;
                border-radius: 4px;
                -webkit-box-shadow: inset 0 1px 1px rgba(0,0,0,0.075);
                box-shadow: inset 0 1px 1px rgba(0,0,0,0.075);
                -webkit-transition: border-color ease-in-out .15s,box-shadow ease-in-out .15s;
                transition: border-color ease-in-out .15s,box-shadow ease-in-out .15s;
                margin-left: 185px;
            }
        </style>
    </asp:Content>
    <asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        
        <div class="container" style="margin-top:6%">
            <asp:GridView ID="gdTicketReport" runat="server" EmptyDataText="No Record Found...." AutoGenerateColumns="False" AllowPaging="true" PageSize="20" CssClass=""
                        Width="90%" Font-Size="12">
                        <Columns>
                            <asp:TemplateField HeaderText="Sr.No">
                                <ItemTemplate>
                                    <%# Container.DataItemIndex+1 %>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:BoundField HeaderText="Bus Name" DataField="BusName" />
                             <asp:BoundField HeaderText="Passenger Name" DataField="PaxName" />
                            <asp:BoundField HeaderText="Email ID" DataField="Email" />
                             <asp:BoundField HeaderText="Contact No" DataField="Contact" />
                             <asp:BoundField HeaderText="Origin" DataField="Origin" />
                             <asp:BoundField HeaderText="Destination" DataField="Destination" />
                             <asp:BoundField HeaderText="Travel Date" DataField="TravelDate" />
                             <asp:BoundField HeaderText="Seat No" DataField="SeatNo" />
                             <asp:BoundField HeaderText="Fare" DataField="Fare" />
                            <asp:BoundField HeaderText="Booked By" DataField="BookedBy" />
                        </Columns>
                    </asp:GridView>
        </div>
        <br />
<br />
        <br />
<br />
        <br />
<br />
           
           
    </asp:Content>

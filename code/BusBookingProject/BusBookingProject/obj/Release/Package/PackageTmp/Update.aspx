<%@ Page Title="" Language="C#" MasterPageFile="~/BusBookingMaster.Master" AutoEventWireup="true" CodeBehind="Update.aspx.cs" Inherits="BusBookingProject.UpdateRescedule" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            display: block;
            width: 100%;
            height: 34px;
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
            margin-left: 218px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

      <div>
            <h1>Update Contact</h1>
            
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label1" runat="server" Font-Size="Large" Text="Enter Contact Number to Rescedule the trip"></asp:Label>
            <br />
&nbsp;<asp:TextBox ID="txtContactSearch" runat="server" CssClass="auto-style1" Width="70%"></asp:TextBox><br />
            <asp:Button ID="btnSearch" runat="server" Text="Search" OnClick="btnSearch_Click" CssClass="btn btn-primary" style="margin-left: 279px" Width="50%" />
            <br />
            <br />
            <asp:Label ID="lblResult" runat="server" Text=""></asp:Label>
            
            <h2 style="text-align:center">Contact Details</h2>
            <table style="margin:50px">
                <tr>
                    <td>First Name:</td>
                    <td><asp:TextBox ID="txtFname" runat="server" CssClass="form-control" Enabled="false"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Last Name:</td>
                    <td><asp:TextBox ID="txtLname" runat="server" CssClass="form-control" Enabled="false"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Email:</td>
                    <td><asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" Enabled="false"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>City:</td>
                    <td><asp:TextBox ID="txtCity" runat="server" CssClass="form-control" Enabled="false"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Seat Number:</td>
                    <td><asp:TextBox ID="txtSeatNo" runat="server" CssClass="form-control" Enabled="false"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Travel Date:</td>
                    <td><asp:TextBox ID="txtTravelDate" runat="server" CssClass="form-control" Enabled="false"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Origin:</td>
                    <td><asp:TextBox ID="txtOrigin" runat="server" CssClass="form-control" Enabled="false"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Destination:</td>
                    <td><asp:TextBox ID="txtDestination" runat="server" CssClass="form-control" Enabled="false"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Boarding ID:</td>
                    <td><asp:TextBox ID="txtBoardingID" runat="server" CssClass="form-control" Enabled="false"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Fare:</td>
                    <td><asp:TextBox ID="txtFare" runat="server" CssClass="form-control" Enabled="false"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>PNR Number:</td>
                    <td><asp:TextBox ID="txtPNRNo" runat="server" CssClass="form-control" Enabled="false"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Schedule ID:</td>
                    <td><asp:TextBox ID="txtScheduleID" runat="server" CssClass="form-control" Enabled="false"></asp:TextBox></td>
                </tr>
            </table>
            <asp:Button ID="btnSave" runat="server" Text="Save Changes" OnClick="btnSave_Click" CssClass="btn btn-primary" Enabled="True" />
        </div>
</asp:Content>

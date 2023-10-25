<%@ Page Title="" Language="C#" MasterPageFile="~/BusBookingMaster.Master" AutoEventWireup="true" CodeBehind="Rescedule.aspx.cs" Inherits="BusBookingProject.Rescedule" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <br />
    <br />
    <br />
    <br />

    <div>
        <asp:Label ID="lblPNR" runat="server" Text="Enter PNR Number:"></asp:Label>
        <asp:TextBox ID="txtPNR" runat="server" CssClass="form-control"></asp:TextBox>
        <asp:Button ID="btnSearch" runat="server" Text="Search" OnClick="btnSearch_Click" CssClass="btn btn-primary" />
    </div>

    <div>
        <asp:Button ID="updatebutton" runat="server" OnClick="updatebutton_Click" Text="Reschedule" PostBackUrl="~/UpdateRescedule.aspx" />
        
        <asp:Table ID="tblBookingDetails" runat="server" CssClass="table">
        </asp:Table>
    </div>
</asp:Content>

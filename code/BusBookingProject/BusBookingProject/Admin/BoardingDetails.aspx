<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="BoardingDetails.aspx.cs" Inherits="BusBookingProject.Admin.BoardingDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="container" style="margin-top: 5%">
    </div>
    <div class="row centered-form" style="margin-top: 5%">
        <div class="col-lg-8 col-sm-8 col-md-2 col-sm-offset-2 col-md-offset-2">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h3 class="panel-title">Add Boarding Details</h3>
                </div>
                <div class="panel-body">
                    <asp:ValidationSummary ID="vsRegister" runat="server" CssClass="alert alert-danger" ShowSummary="true" ValidationGroup="vgRegister" />
                    <div id="divMessage" runat="server" />
                    <div class="col-xs-6 col-sm-6 col-md-6">
                        <div class="form-group">
                            <asp:Label ID="lblFirstName" runat="server" Text="Boarding Place Name" Font-Bold="true"></asp:Label>
                            <asp:TextBox ID="txtPlace" runat="server"  class="form-control input-sm floatlabel"/>
                             <asp:RequiredFieldValidator runat="server" ControlToValidate="txtPlace" Display="None" ID="rfvFirstName" ValidationGroup="vgRegister"
                                    CssClass="text-danger" ErrorMessage="Boarding Place  Name is required." /><br />
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtPlace" ErrorMessage="Enter only string values" ForeColor="Red" ValidationExpression="^[a-zA-Z]+$" ValidationGroup="vgRegister"></asp:RegularExpressionValidator>
                        </div>
                       <div class="form-group">
                            <asp:Label ID="lblUserName" runat="server" Text="Boarding Place Expected Time Of Arrival" Font-Bold="true"></asp:Label>
                            <asp:TextBox ID="txtArrival" runat="server" placeholder="Enter in 24 hour format" class="form-control input-sm floatlabel" />
                             <asp:RequiredFieldValidator runat="server" ControlToValidate="txtArrival" Display="None" ID="rfVMobileNo" ValidationGroup="vgRegister"
                                    CssClass="text-danger" ErrorMessage="Expected Arrival Time is required." />
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtArrival" ErrorMessage="Enter the Time in 24 hr format" ForeColor="Red" ValidationExpression="^([0-1]?[0-9]|2[0-3]):[0-5][0-9]$" ValidationGroup="vgRegister"></asp:RegularExpressionValidator>
                            <br />
                        </div>
                    </div>
                    <div class="col-xs-6 col-sm-6 col-md-6">
                        <div class="form-group">
                            <asp:Button ID="btnAddBoardingDetails" runat="server" Text="Add Boarding Details" style="width:auto" OnClick="btnAddBoardingDetails_Click" class="btn btn-info " ValidationGroup="vgRegister"  CausesValidation="True" ViewStateMode="Inherit" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

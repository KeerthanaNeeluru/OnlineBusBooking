<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="BusScheduleDetails.aspx.cs" Inherits="BusBookingProject.Admin.BusScheduleDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <script type="text/javascript">
        function validateFutureDate(sender, args) {
            var dateValue = args.Value;
            var currentDate = new Date();

            // Parse the input date in dd/mm/yyyy format
            var dateParts = dateValue.split('/');
            if (dateParts.length !== 3) {
                args.IsValid = false; // Invalid format, not exactly three parts (day, month, year)
                return;
            }

            // Create a new date object with parsed values
            var day = parseInt(dateParts[0]);
            var month = parseInt(dateParts[1]) - 1; // Month is zero-based (0 = January, 1 = February, ...)
            var year = parseInt(dateParts[2]);

            var enteredDate = new Date(year, month, day);

            if (enteredDate <= currentDate) {
                args.IsValid = false;
            } else {
                args.IsValid = true;
            }
        }

</script>
     <div class="container" style="margin-top: 5%">
    </div>
    <div class="row centered-form" style="margin-top: 5%">
        <div class="col-lg-8 col-sm-8 col-md-2 col-sm-offset-2 col-md-offset-2">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h3 class="panel-title">Add Bus Schedule</h3>
                </div>
                <div class="panel-body">
                    <asp:ValidationSummary ID="vsRegister" runat="server" CssClass="alert alert-danger" ShowSummary="true" ValidationGroup="vgRegister" />
                    <div id="divMessage" runat="server" />
                    <div class="col-xs-6 col-sm-6 col-md-6">
                        <div class="form-group">
                            <asp:Label ID="lblFirstName" runat="server" Text="Available Date" Font-Bold="true"></asp:Label>
                            <asp:TextBox ID="txtDate" runat="server" placeholder="DD/MM/YYYY Format" class="form-control input-sm floatlabel"/>
                             <asp:RequiredFieldValidator runat="server" ControlToValidate="txtDate" Display="None" ID="rfvFirstName" ValidationGroup="vgRegister"
                                    CssClass="text-danger" ErrorMessage="Date is required." />&nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtDate" ErrorMessage="enter in DD/MM/YYYY format" ForeColor="Red" ValidationExpression="^(0[1-9]|[12][0-9]|3[01])/(0[1-9]|1[0-2])/\d{4}$" ValidationGroup="vgRegister"></asp:RegularExpressionValidator>
                            <asp:CustomValidator ID="cvFutureDate" runat="server" ControlToValidate="txtDate" ClientValidationFunction="validateFutureDate" OnServerValidate="ServerValidateDate" ValidationGroup="vgRegister" Display="Dynamic" ForeColor="Red" ErrorMessage="Date must be in the future"></asp:CustomValidator>

                            <br />
                        </div>
                       <div class="form-group">
                            <asp:Label ID="lblUserName" runat="server" Text="Fare" Font-Bold="true"></asp:Label>
                            <asp:TextBox ID="txtFare" runat="server" class="form-control input-sm floatlabel" />
                             <asp:RequiredFieldValidator runat="server" ControlToValidate="txtFare" Display="None" ID="rfVMobileNo" ValidationGroup="vgRegister"
                                    CssClass="text-danger" ErrorMessage="Fare  is required." />
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="txtFare" ErrorMessage="Enter only in Numeric And only 2 values after decimal" ValidationExpression="^\d+(\.\d{1,2})?$" ValidationGroup="vgRegister" ForeColor="Red"></asp:RegularExpressionValidator>
                            <br />
                        </div>
                    </div>
                    <div class="col-xs-6 col-sm-6 col-md-6">
                        <div class="form-group">
                            <asp:Label ID="lblLastName" runat="server" Text="Estimated Travelling Time" Font-Bold="True"></asp:Label>
                            <asp:TextBox ID="txtTravelTime" runat="server" placeholder="00:00 hrs" class="form-control input-sm floatlabel"/>
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="txtTravelTime" Display="None" ID="rfVLastName" ValidationGroup="vgRegister"
                                    CssClass="text-danger" ErrorMessage="Total Travel Time is required." />&nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtTravelTime" ErrorMessage="enter 00:00 hrs" ForeColor="Red" ValidationExpression="^(0[1-9]|1[0-2]):[0-5][0-9] (hrs)$" ValidationGroup="vgRegister"></asp:RegularExpressionValidator>
                            <br />
                        </div>
                        
                        <div class="form-group">
                            <asp:Label ID="lblPassword" runat="server" Text="Arrival Time" Font-Bold="true"></asp:Label>
                            <asp:TextBox ID="txtArrival" runat="server" placeholder="Enter in 24 Hour Format" class="form-control input-sm floatlabel"  />
                             <asp:RequiredFieldValidator runat="server" ControlToValidate="txtArrival" Display="None" ID="rfvPassword" ValidationGroup="vgRegister"
                                    CssClass="text-danger" ErrorMessage="Arrival Time  is required." />
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtArrival" ErrorMessage="Enter in 24 hr format" ForeColor="Red" ValidationExpression="^([0-1]?[0-9]|2[0-3]):[0-5][0-9]$" ValidationGroup="vgRegister"></asp:RegularExpressionValidator>
                            <br />
                        </div>
                    </div>
                    <div class="col-xs-6 col-sm-6 col-md-6">
                        <div class="form-group">
                            <asp:Label ID="lblEmail" runat="server" Text="Departure Time" Font-Bold="true"></asp:Label>
                            <asp:TextBox ID="txtDeparture" placeholder="Enter in 24 Hour Format"  runat="server" class="form-control input-sm floatlabel" />
                             <asp:RequiredFieldValidator runat="server" ControlToValidate="txtDeparture" Display="None" ID="rfVEmail" ValidationGroup="vgRegister"
                                    CssClass="text-danger" ErrorMessage="Departure Time  is required." />
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="txtDeparture" ErrorMessage="Enter in 24 hr format" ForeColor="Red" ValidationExpression="^([0-1]?[0-9]|2[0-3]):[0-5][0-9]$" ValidationGroup="vgRegister"></asp:RegularExpressionValidator>
                            <br />
                        </div>
                    </div>
                    <div class="col-xs-6 col-sm-6 col-md-6">
                        <div class="form-group">
                            <asp:Button ID="btnSaveSchedule" runat="server" Text="Save Bus Schedule" style="margin-top:20px;"  OnClick="btnSaveSchedule_Click" class="btn btn-info " ValidationGroup="vgRegister"  CausesValidation="True" ViewStateMode="Inherit" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
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
    <br />
<br />
<br />
<br />
</asp:Content>

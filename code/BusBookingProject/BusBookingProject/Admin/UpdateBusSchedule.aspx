<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="UpdateBusSchedule.aspx.cs" Inherits="BusBookingProject.Admin.UpdateBusSchedule" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
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
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <div class="padding100" style="margin-top:3%">
 <div class="container">
     <div id="loginbox" style="margin-top: 10%;"  class="mainbox col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
         <div class="panel panel-default">
             <div class="panel-heading panel-heading-custom" style="background-color:cornflowerblue;color:white">
                 <div class="panel-title" >
                     Reschedule A Bus
                 </div>
             </div>
             <div style="padding-top: 30px;background-color:white" class="panel-body" >
              <div  class="form-group">
                 <asp:TextBox ID="ScheduleIdTextBox" runat="server" placeholder="Enter Schedule ID" BackColor="#CCCCCC" BorderColor="Black" ForeColor="Black"></asp:TextBox>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="ScheduleIdTextBox" ErrorMessage="Please Enter Schedule Id" ForeColor="Red" ValidationGroup="vgRegister"></asp:RequiredFieldValidator>
                  <br />
                   <asp:RequiredFieldValidator runat="server" ControlToValidate="NewDateTextBox" Display="None" ID="rfvFirstName" ValidationGroup="vgRegister"
        CssClass="text-danger" ErrorMessage="Date is required." />&nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="NewDateTextBox" ErrorMessage="enter in DD/MM/YYYY format" ForeColor="Red" ValidationExpression="^(0[1-9]|[12][0-9]|3[01])/(0[1-9]|1[0-2])/\d{4}$" ValidationGroup="vgRegister"></asp:RegularExpressionValidator>

               <asp:TextBox ID="NewDateTextBox" runat="server" placeholder="Enter New Date (DD/mm/yyyy)" BackColor="#CCCCCC" BorderColor="Black" ForeColor="Black"></asp:TextBox>
                  <br />
                        <!-- Button -->
                        <div class="col-sm-12 controls">
                           <asp:Button ID="UpdateButton" runat="server" Text="Update Date" OnClick="UpdateDate_Click" BackColor="#009933" ValidationGroup="vgRegister" />
                            <asp:Label ID="MessageLabel" runat="server" Text=""></asp:Label>
                        </div>
                    </div>

                </div>
            </div>
           
        </div>
    </div>
</div>

</asp:Content>

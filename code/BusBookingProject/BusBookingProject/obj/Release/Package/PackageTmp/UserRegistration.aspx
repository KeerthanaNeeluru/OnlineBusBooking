<%@ Page Title="" Language="C#" MasterPageFile="~/BusBookingMaster.Master" AutoEventWireup="true" CodeBehind="UserRegistration.aspx.cs" Inherits="BusBookingProject.UserRegistration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="container" style="margin-top: 5%">
    </div>
    <div class="row centered-form" style="margin-top: 5%">
        <div class="col-lg-8 col-sm-8 col-md-2 col-sm-offset-2 col-md-offset-2">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h3 class="panel-title">New User Registration</h3>
                </div>
                <div class="panel-body">
                    <asp:ValidationSummary ID="vsRegister" runat="server" CssClass="alert alert-danger" ShowSummary="true" ValidationGroup="vgRegister" />
                    <div id="divMessage" runat="server" />
                    <div class="col-xs-6 col-sm-6 col-md-6">
                        <div class="form-group">
                            <asp:Label ID="lblFirstName" runat="server" Text="First Name" Font-Bold="true"></asp:Label>
                            <asp:TextBox ID="txtFirstName" runat="server" class="form-control input-sm floatlabel"/>
                             <asp:RequiredFieldValidator runat="server" ControlToValidate="txtFirstName" Display="None" ID="rfvFirstName" ValidationGroup="vgRegister"
                                    CssClass="text-danger" ErrorMessage="First Name is required." />
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtFirstName" ErrorMessage="Enter valid FirstName" ForeColor="Red" ValidationExpression="^[a-zA-Z]+$" ValidationGroup="vgRegister"></asp:RegularExpressionValidator>
                            <br />
                        </div>
                       <div class="form-group">
                            <asp:Label ID="lblUserName" runat="server" Text="Contact No" Font-Bold="true"></asp:Label>
                            <asp:TextBox ID="txtMobileNo" runat="server" class="form-control input-sm floatlabel" />
                             <asp:RequiredFieldValidator runat="server" ControlToValidate="txtMobileNo" Display="None" ID="rfVMobileNo" ValidationGroup="vgRegister"
                                    CssClass="text-danger" ErrorMessage="Contact is required." />
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="txtMobileNo" ErrorMessage="Enter Valid Contact Number" ForeColor="Red" ValidationExpression="^\d{10}$" ValidationGroup="vgRegister"></asp:RegularExpressionValidator>
                            <br />
                        </div>
                    </div>
                    <div class="col-xs-6 col-sm-6 col-md-6">
                        <div class="form-group">
                            <asp:Label ID="lblLastName" runat="server" Text="Last Name" Font-Bold="true"></asp:Label>
                            <asp:TextBox ID="txtLastName" runat="server" class="form-control input-sm floatlabel"/>
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="txtLastName" Display="None" ID="rfVLastName" ValidationGroup="vgRegister"
                                    CssClass="text-danger" ErrorMessage="Last Name is required." />
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtLastName" ErrorMessage="Enter valid LastName" ForeColor="Red" ValidationExpression="^[a-zA-Z]+$" ValidationGroup="vgRegister"></asp:RegularExpressionValidator>
                            <br />
                        </div>
                        
                     <div class="form-group">
                        <asp:Label ID="lblPassword" runat="server" Text="Password" Font-Bold="true"></asp:Label>
                     <asp:TextBox ID="txtPassword" runat="server" class="form-control input-sm floatlabel" TextMode="Password" />
                         <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtPassword" ErrorMessage="Invalid Password" ForeColor="#CC0000" ValidationExpression="^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@$ %^&amp;*-]).{8,}$" ValidationGroup="vgRegister"></asp:RegularExpressionValidator>

                    <br />
                   </div>

                    </div>
                    <div class="col-xs-6 col-sm-6 col-md-6">
                      <div class="form-group">
                        <asp:Label ID="lblEmail" runat="server" Text="Email ID" Font-Bold="true"></asp:Label>
                          <asp:TextBox ID="txtEmailID" runat="server" class="form-control input-sm floatlabel" />
                          <asp:RegularExpressionValidator runat="server" ControlToValidate="txtEmailID" Display="None" 
                              ID="revEmail" ValidationGroup="vgRegister" CssClass="text-danger" 
                                ErrorMessage="Invalid email address." ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" /><br />
                                 </div>

                        <div class="form-group">
                            <asp:Label ID="lblAddress" runat="server" Text="Address" Font-Bold="true"></asp:Label>
                            <asp:TextBox runat="server" ID="txtAddress" class="form-control input-sm" />
                             <asp:RequiredFieldValidator runat="server" ControlToValidate="txtAddress" Display="None" ID="rfVAddress" ValidationGroup="vgRegister"
                                    CssClass="text-danger" ErrorMessage="Address  is required." /><br />
                        </div>
                    </div>
                    <div class="col-xs-6 col-sm-6 col-md-6">
                        <div class="form-group">
                            <asp:Label ID="lblCity" runat="server" Text="City" Font-Bold="true"></asp:Label>
                            <asp:TextBox runat="server" ID="txtCity" class="form-control input-sm" />
                             <asp:RequiredFieldValidator runat="server" ControlToValidate="txtCity" Display="None" ID="rfVCity" ValidationGroup="vgRegister"
                                    CssClass="text-danger" ErrorMessage="City Name is required." />
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="txtCity" ErrorMessage="Enter valid City" ForeColor="Red" ValidationExpression="^[a-zA-Z]+$" ValidationGroup="vgRegister"></asp:RegularExpressionValidator>
                            <br />
                        </div>
                   <div class="form-group">
                          <asp:Label ID="lblPinCode" runat="server" Text="Pincode" Font-Bold="true"></asp:Label>
                             <asp:TextBox ID="txtPincode" runat="server" class="form-control input-sm floatlabel" />
                            <asp:RegularExpressionValidator runat="server" ControlToValidate="txtPincode" Display="None" 
                              ID="revPinCode" ValidationGroup="vgRegister" CssClass="text-danger" 
                              ErrorMessage="Pin code must be 6 digits." ValidationExpression="^\d{6}$" /><br />
                       </div>

                    <div class="col-xs-6 col-sm-6 col-md-6">
                        <div class="form-group">
                            <asp:Button ID="btnSave" runat="server" Text="Register" OnClick="btnSave_Click" class="btn btn-info " ValidationGroup="vgRegister"  CausesValidation="True" ViewStateMode="Inherit" />
                        </div>
                    </div>
                    <div class="col-xs-6 col-sm-6 col-md-6">
                        <div class="form-group">
                            <a href="Login.aspx" class="btn btn-info btn-block">Login</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
        <script type="text/javascript">
            function validatePassword(sender, args) {
                // Get the password input value
                var password = document.getElementById('<%= txtPassword.ClientID %>').value;

                // Define a regular expression pattern for an 8-character password with alphanumeric and special characters
                var passwordPattern = /^(?=.*[0-9])(?=.*[a-zA-Z])(?=.*[@#$%^&+=]).{8,}$/;

                if (password.match(passwordPattern)) {
                    // Password is valid
                    args.IsValid = true;
                } else {
                    // Password is invalid
                    args.IsValid = false;
                }
            }
        </script>

</asp:Content>

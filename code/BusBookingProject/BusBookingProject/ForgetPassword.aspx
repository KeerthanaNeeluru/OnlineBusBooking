<%@ Page Title="" Language="C#" MasterPageFile="~/BusBookingMaster.Master" AutoEventWireup="true" CodeBehind="ForgetPassword.aspx.cs" Inherits="BusBookingProject.ForgetPassword" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
         <style type="text/css">


    .centered-form {
        margin-top: 10%;
    }

        .centered-form .panel {
            background: rgba(255, 255, 255, 0.8);
            box-shadow: rgba(0, 0, 0, 0.3) 20px 20px 20px;
        }

    label.label-floatlabel {
        font-weight: bold;
        color: #46b8da;
        font-size: 11px;
    }
</style>
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <div class="padding100" style="margin-top:3%">
   <div class="container">
       <div id="loginbox" style="margin-top: 10%;" class="mainbox col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
           <div class="panel panel-default">
               <div class="panel-heading panel-heading-custom">
                   <div class="panel-title">
                     ForgetPassword
                   </div>
               </div>
               <div style="padding-top: 30px" class="panel-body">
                   <label>Contact Number</label>
                            <div class="form-group">
                                <asp:TextBox CssClass="form-control" ID="ContactNumber" runat="server" placeholder="Contact Number"></asp:TextBox>
                                
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Password is Required" ControlToValidate="ContactNumber" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="ContactNumber" ErrorMessage="Contact number must only contain 10 digits" ForeColor="#CC0000" ValidationExpression="^\d{10}$"></asp:RegularExpressionValidator>
                                </div>
                   <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

                            <label>New Password</label>
                            <div class="form-group">
                                <asp:TextBox CssClass="form-control" ID="NewPassword" runat="server" placeholder="Password" TextMode="Password" ClientIDMode="Static"></asp:TextBox>
                               
                                <script type="text/javascript">
                                    function showpass(check_box) {
                                        var spass = document.getElementById("NewPassword");
                                        if (check_box.checked)
                                            spass.setAttribute("Type", "Text");
                                        else
                                            spass.setAttribute("Type", "Password");
                                    }
                                </script>
<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Password is Required" ControlToValidate="NewPassword" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="NewPassword" ErrorMessage="Password must contain atleast 6 characters including atleast 1 special character and 1 digit" ForeColor="#CC0000" ValidationExpression="^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@$ %^&amp;*-]).{8,}$" ValidationGroup="vgRegister"></asp:RegularExpressionValidator>
                            </div>

                    <div  class="form-group">
     <!-- Button -->
     <div class="col-sm-12 controls">
          <asp:Button ID="Button1" class="btn btn-primary w-100 btn-lg" runat="server" Text="Update" OnClick="Button1_Click" />
         <a href="Login.aspx" style="text-decoration:none"><< Back to Home</a><br><br><br><br>

                               </div>
                        </div>
                                       </div>
                </div>
            </div>
        </div>
    </div>
</div>
</asp:Content>

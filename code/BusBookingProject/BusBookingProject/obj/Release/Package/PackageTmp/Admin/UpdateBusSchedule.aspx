<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="UpdateBusSchedule.aspx.cs" Inherits="BusBookingProject.Admin.UpdateBusSchedule" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
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
                  <br />
               <asp:TextBox ID="NewDateTextBox" runat="server" placeholder="Enter New Date (DD/mm/yyyy)" BackColor="#CCCCCC" BorderColor="Black" ForeColor="Black"></asp:TextBox>
                  <br />
                        <!-- Button -->
                        <div class="col-sm-12 controls">
                           <asp:Button ID="UpdateButton" runat="server" Text="Update Date" OnClick="UpdateDate_Click" BackColor="#009933" />
                            <asp:Label ID="MessageLabel" runat="server" Text=""></asp:Label>
                        </div>
                    </div>

                </div>
            </div>
           
        </div>
    </div>
</div>

</asp:Content>

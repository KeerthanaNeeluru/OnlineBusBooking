<%@ Page Title="" Language="C#" MasterPageFile="~/BusBookingMaster.Master" AutoEventWireup="true" CodeBehind="AboutUs.aspx.cs" Inherits="BusBookingProject.AboutUs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container" style="margin-top:6%">
        <div class="panel panel-default">
            <div class="panel-heading">
                <div class="panel-title">
                    <h3>About Us</h3>
                </div>
            </div>
            <div class="panel-body">
                <p style="font-size:large">
                    We are among top 10 Service Provider for Online Bus Booking in India,
                    We have our branches in all Major cities in India,Our Services are very fast 
                    compare to other Online Portals.We works with Efficieny and provide a
                    good service Environment to our End Users,24*4 Support Facility is Available,
                    Each and every query is Resolved with in a Day.
                </p>
            </div>
        </div>
    </div>
    <br />
    <div class="container" style="margin-top:6%">
     <div class="panel panel-default">
         <div class="panel-heading">
             <div class="panel-title">
                 <h3>Feedback</h3>
                 <p>
                     <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/Comments.aspx">Add FeedBack</asp:LinkButton>
                 </p>
                
    
   
   
               
             </div>
         </div>
     </div>
 </div>
        <asp:Repeater ID="d1" runat="server">
    <ItemTemplate>
        <div style="float: left;">
    <img src="../<%# Eval("busImage") %>" alt='' style="width: 50%; height: 50%;margin-left:50px">
</div>
       <div style="float: left;">

    <div class="card" style="width: 100%;">
        <h4>Name: <%# Eval("CustomerName") %></h4>
        <h4>Ratings: <%# Eval("rating") %></h4>
        <h4>Comment: <%# Eval("comments") %></h4>
    </div>
</div>
     


    </ItemTemplate>
</asp:Repeater>
         
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

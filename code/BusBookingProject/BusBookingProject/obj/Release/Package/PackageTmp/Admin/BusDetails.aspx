<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="BusDetails.aspx.cs" Inherits="BusBookingProject.Admin.BusDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="container" style="margin-top: 5%">
    </div>
    <div class="row centered-form" style="margin-top: 5%">
        <div class="col-lg-8 col-sm-8 col-md-2 col-sm-offset-2 col-md-offset-2">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h3 class="panel-title">Add Bus Details</h3>
                </div>
                <div class="panel-body">
                    <asp:ValidationSummary ID="vsRegister" runat="server" CssClass="alert alert-danger" ShowSummary="true" ValidationGroup="vgRegister" />
                    <div id="divMessage" runat="server" />
                    <div class="col-xs-6 col-sm-6 col-md-6">
                        <div class="form-group">
                            <asp:Label ID="lblBus" runat="server" Text="Bus No" Font-Bold="true"></asp:Label>
                            <asp:TextBox ID="txtBusNo"  placeholder="XX 00 XX 0000" runat="server" class="form-control input-sm floatlabel"/>
                             <asp:RequiredFieldValidator runat="server" ControlToValidate="txtBusNo" Display="None" ID="rfvFirstName" ValidationGroup="vgRegister"
                                    CssClass="text-danger" ErrorMessage="Bus No is required." /><br />
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtBusNo" ErrorMessage="Enter Valid BusNo XX 00 XX 0000" ForeColor="#CC0000" ValidationExpression="^[A-Z]{2}[ -][0-9]{1,2}(?: [A-Z])?(?: [A-Z]*)? [0-9]{4}$" ValidationGroup="vgRegister"></asp:RegularExpressionValidator>
                            <br />
                        </div>
                       <div class="form-group">
                            <asp:Label ID="lblSeatRow" runat="server" Text="No Of Seats Rows" Font-Bold="true"></asp:Label>
                            <asp:TextBox ID="txtSeatRows" placeholder="5-15" runat="server" class="form-control input-sm floatlabel" />
                             <asp:RequiredFieldValidator runat="server" ControlToValidate="txtSeatRows"  placeholder="5-15" Display="None" ID="rfVMobileNo" ValidationGroup="vgRegister"
                                    CssClass="text-danger" ErrorMessage="Seats Row is required." />
                            <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtSeatRows" ErrorMessage="Must be Numeric &amp; Values b/w 5-15" ForeColor="#CC0000" MaximumValue="15" MinimumValue="5" Type="Integer" ValidationGroup="vgRegister"></asp:RangeValidator>
                            <br />
                        </div>
                        <div class="form-group">
                            <asp:Label ID="Label1" runat="server" Text="Origin" Font-Bold="true"></asp:Label>
                            <asp:TextBox ID="txtOrigin" runat="server" class="form-control input-sm floatlabel" />
                             <asp:RequiredFieldValidator runat="server" ControlToValidate="txtOrigin" Display="None" ID="RequiredFieldValidator1" ValidationGroup="vgRegister"
                                    CssClass="text-danger" ErrorMessage="Origin is Required" />
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="txtOrigin" ErrorMessage="Enter only string values" ForeColor="Red" ValidationExpression="^[a-zA-Z]+$" ValidationGroup="vgRegister"></asp:RegularExpressionValidator>
                            <br />
                        </div>
                          <div class="form-group">
                            <asp:Label ID="Label3" runat="server" Text="BusName" Font-Bold="true"></asp:Label>
                            <asp:TextBox ID="txtBusName" runat="server" class="form-control input-sm floatlabel" />
                             <asp:RequiredFieldValidator runat="server" ControlToValidate="txtBusName" Display="None" ID="RequiredFieldValidator3" ValidationGroup="vgRegister"
                                    CssClass="text-danger" ErrorMessage="Bus Name is Required" />
                              <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ControlToValidate="txtBusName" ErrorMessage="Enter only string values" ForeColor="Red" ValidationExpression="^[a-zA-Z]+$" ValidationGroup="vgRegister"></asp:RegularExpressionValidator>
                              <br />
                        </div>
                    </div>
                    <div class="col-xs-6 col-sm-6 col-md-6">
                        <div class="form-group">
                            <asp:Label ID="lblLastName" runat="server" Text="Bus Type" Font-Bold="true"></asp:Label>
                             <asp:DropDownList ID="ddlBusType" runat="server" class="form-control input-sm floatlabel">
                                 <asp:ListItem Value="0" Text="Select Bus Type"></asp:ListItem>
                                 <asp:ListItem Value="1" Text="Normal"></asp:ListItem>
                                  <asp:ListItem Value="2" Text="AC"></asp:ListItem>
                             </asp:DropDownList>
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="ddlBusType" Display="None" ID="rfVLastName" ValidationGroup="vgRegister"
                                    CssClass="text-danger" ErrorMessage="Last Name is required." /><br />
                        </div>
                        
                        <div class="form-group">
                            <asp:Label ID="lblPassword" runat="server" Text="Total Seats Column" Font-Bold="true"></asp:Label>
                            <asp:TextBox ID="txtSeatColumn" runat="server" placeholder="3-4" class="form-control input-sm floatlabel"  />
                             <asp:RequiredFieldValidator runat="server"  ControlToValidate="txtSeatColumn" Display="None" ID="rfvPassword" ValidationGroup="vgRegister"
                                    CssClass="text-danger" ErrorMessage="Seats Column is Require" /><br />
                            <asp:RangeValidator ID="RangeValidator2" runat="server" ControlToValidate="txtSeatColumn" ErrorMessage="Must Be Numeric &amp; Values B/w 3-4" ForeColor="#CC0000" MaximumValue="4" MinimumValue="3" Type="Integer" ValidationGroup="vgRegister"></asp:RangeValidator>
                        </div>
                        <div class="form-group">
                            <asp:Label ID="Label2" runat="server" Text="Destination" Font-Bold="true"></asp:Label>
                            <asp:TextBox ID="txtDetination" runat="server" class="form-control input-sm floatlabel" />
                             <asp:RequiredFieldValidator runat="server" ControlToValidate="txtDetination" Display="None" ID="RequiredFieldValidator2" ValidationGroup="vgRegister"
                                    CssClass="text-danger" ErrorMessage="Destination is Required" />
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator7" runat="server" ControlToValidate="txtDetination" ErrorMessage="Enter only string values without Space" ForeColor="Red" ValidationExpression="^[A-Za-z]*$" ValidationGroup="vgRegister"></asp:RegularExpressionValidator>
                            <br />
                        </div>
                       
                    </div>
                    <div class="col-xs-6 col-sm-6 col-md-6">
                        <div class="form-group">
                            <asp:Button ID="btnSave" runat="server" style="width:auto;margin-top:20px;" Text="Add Bus Details" OnClick="btnSave_Click" class="btn btn-info " ValidationGroup="vgRegister"  CausesValidation="True" ViewStateMode="Inherit" />
                            <br />
                            <br />
                            <br />
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
    <div class="row centered-form" style="margin-top: 5%">
    <div class="col-lg-8 col-sm-8 col-md-2 col-sm-offset-2 col-md-offset-2">
        <div class="panel panel-default">
            <div class="panel-heading">
                <h3 class="panel-title"> Bus Details</h3>
            </div>
             <div class="panel-body">
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="BusId" DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
               
                <asp:BoundField DataField="BusId" HeaderText="BusId" InsertVisible="False" ReadOnly="True" SortExpression="BusId" />
                <asp:BoundField DataField="BusNo" HeaderText="BusNo" SortExpression="BusNo" />
                <asp:BoundField DataField="BustType" HeaderText="BustType" SortExpression="BustType" />
                <asp:BoundField DataField="TotalSeat" HeaderText="TotalSeat" SortExpression="TotalSeat" />
                <asp:BoundField DataField="SeatColumn" HeaderText="SeatColumn" SortExpression="SeatColumn" />
                <asp:BoundField DataField="SeatRow" HeaderText="SeatRow" SortExpression="SeatRow" />
                <asp:BoundField DataField="BookedSeat" HeaderText="BookedSeat" SortExpression="BookedSeat" />
                <asp:BoundField DataField="AvailableSeats" HeaderText="AvailableSeats" SortExpression="AvailableSeats" />
                <asp:BoundField DataField="BusName" HeaderText="BusName" SortExpression="BusName" />
                 <asp:CommandField ShowDeleteButton="True" />
            </Columns>
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:OnlineBusBookingConnectionString2 %>" DeleteCommand="DELETE FROM [BusMaster] WHERE [BusId] = @BusId" InsertCommand="INSERT INTO [BusMaster] ([BusNo], [BustType], [TotalSeat], [SeatColumn], [SeatRow], [BookedSeat], [AvailableSeats], [BusName]) VALUES (@BusNo, @BustType, @TotalSeat, @SeatColumn, @SeatRow, @BookedSeat, @AvailableSeats, @BusName)" SelectCommand="SELECT * FROM [BusMaster]" UpdateCommand="UPDATE [BusMaster] SET [BusNo] = @BusNo, [BustType] = @BustType, [TotalSeat] = @TotalSeat, [SeatColumn] = @SeatColumn, [SeatRow] = @SeatRow, [BookedSeat] = @BookedSeat, [AvailableSeats] = @AvailableSeats, [BusName] = @BusName WHERE [BusId] = @BusId">
            <DeleteParameters>
                <asp:Parameter Name="BusId" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="BusNo" Type="String" />
                <asp:Parameter Name="BustType" Type="String" />
                <asp:Parameter Name="TotalSeat" Type="Int32" />
                <asp:Parameter Name="SeatColumn" Type="Int32" />
                <asp:Parameter Name="SeatRow" Type="Int32" />
                <asp:Parameter Name="BookedSeat" Type="Int32" />
                <asp:Parameter Name="AvailableSeats" Type="Int32" />
                <asp:Parameter Name="BusName" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="BusNo" Type="String" />
                <asp:Parameter Name="BustType" Type="String" />
                <asp:Parameter Name="TotalSeat" Type="Int32" />
                <asp:Parameter Name="SeatColumn" Type="Int32" />
                <asp:Parameter Name="SeatRow" Type="Int32" />
                <asp:Parameter Name="BookedSeat" Type="Int32" />
                <asp:Parameter Name="AvailableSeats" Type="Int32" />
                <asp:Parameter Name="BusName" Type="String" />
                <asp:Parameter Name="BusId" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br /><br />
    <br /><br /><br />
    </div>
        </div>
        </div>
    </div>
    <br /><br /><br />
</asp:Content>

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
                    <h3 class="panel-title">Thêm điểm dừng</h3>
                </div>
                <div class="panel-body">
                    <asp:ValidationSummary ID="vsRegister" runat="server" CssClass="alert alert-danger" ShowSummary="true" ValidationGroup="vgRegister" />
                    <div id="divMessage" runat="server" />
                    
                        <div class="form-group">
                            <asp:Label ID="lblFirstName" runat="server" Text="Tên điểm dừng" Font-Bold="true"></asp:Label>
                            <asp:TextBox ID="txtPlace" runat="server"  class="form-control input-sm floatlabel"/>
                             <asp:RequiredFieldValidator runat="server" ControlToValidate="txtPlace" Display="None" ID="rfvFirstName" ValidationGroup="vgRegister"
                                    CssClass="text-danger" ErrorMessage="Không được bỏ trống tên điểm dừng" /><br />
                        </div>
                       <div class="form-group">
                            <asp:Label ID="lblUserName" runat="server" Text="Thời gian đến dự kiến" Font-Bold="true"></asp:Label>
                            <asp:TextBox ID="txtArrival" runat="server" placeholder="00:00 AM/PM" class="form-control input-sm floatlabel" />
                             <asp:RequiredFieldValidator runat="server" ControlToValidate="txtArrival" Display="None" ID="rfVMobileNo" ValidationGroup="vgRegister"
                                    CssClass="text-danger" ErrorMessage="Không được bỏ trống thời gian đến dự kiến" /><br />
                        </div>
                    
                        <div class="form-group">
                            <asp:Button ID="btnAddBoardingDetails" runat="server" Text="Thêm" style="width:auto" OnClick="btnAddBoardingDetails_Click" class="btn btn-success " ValidationGroup="vgRegister"  CausesValidation="True" ViewStateMode="Inherit" />
                        </div>
                    
                </div>
            </div>
        </div>
    </div>
</asp:Content>

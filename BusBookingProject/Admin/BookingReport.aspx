<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="BookingReport.aspx.cs" Inherits="BusBookingProject.Admin.BookingReport" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container" style="margin-top:6%">
        <asp:GridView ID="gdTicketReport" runat="server" EmptyDataText="No Record Found...." AutoGenerateColumns="False" AllowPaging="true" PageSize="20" CssClass=""
                    Width="100%" Font-Size="12">
                    <Columns>
                        <asp:TemplateField HeaderText="No.">
                            <ItemTemplate>
                                <%# Container.DataItemIndex+1 %>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField HeaderText="Tên xe" DataField="BusName" />
                         <asp:BoundField HeaderText="Tên hành khách" DataField="PaxName" />
                        <asp:BoundField HeaderText="Email" DataField="Email" />
                         <asp:BoundField HeaderText="Số điện thoại" DataField="Contact" />
                         <asp:BoundField HeaderText="Xuất phát" DataField="Origin" />
                         <asp:BoundField HeaderText="Điểm đến" DataField="Destination" />
                         <asp:BoundField HeaderText="Ngày đi" DataField="TravelDate" />
                         <asp:BoundField HeaderText="Vị trí ghế" DataField="SeatNo" />
                         <asp:BoundField HeaderText="Giá vé" DataField="Fare" />
                        <asp:BoundField HeaderText="Người đặt" DataField="BookedBy" />
                    </Columns>
                </asp:GridView>
    </div>
</asp:Content>

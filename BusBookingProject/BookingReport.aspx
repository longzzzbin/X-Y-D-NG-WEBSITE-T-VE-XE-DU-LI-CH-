<%@ Page Title="" Language="C#" MasterPageFile="~/BusBookingMaster.Master" AutoEventWireup="true" CodeBehind="BookingReport.aspx.cs" Inherits="BusBookingProject.BookingReport" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container" style="margin-top:6%">
                   <asp:GridView ID="gdTicketReport" runat="server" EmptyDataText="No Record Found...." AutoGenerateColumns="False" AllowPaging="true" PageSize="20" CssClass=""
                    Width="100%" Font-Size="12" OnRowCommand="gdTicketReport_RowCommand">
                    <Columns>
                        <asp:TemplateField HeaderText="No.">
                            <ItemTemplate>
                                <%# Container.DataItemIndex+1 %>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField HeaderText="Mã vé" DataField="PNRNo" />
                        <asp:BoundField HeaderText="Số vé" DataField="TotalTickets" />
                        <asp:BoundField HeaderText="Tổng tiền" DataField="TotalAmount" />
                        <asp:TemplateField HeaderText="Hành động">
                            <ItemTemplate>
                                <asp:LinkButton ID="lnkbtndownloadTicket" runat="server" CommandName="Download Ticket" CommandArgument='<%# Container.DataItemIndex %>'>Tải về</asp:LinkButton>
                                <asp:HiddenField ID="hdnPNRNo" runat="server" Value='<%# Eval("PNRNo") %>' />
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>

              <div id="ticket" runat="server" visible="false">
                <h1 style="font-weight: bold; text-align: center">Dich vu dat xe du lich Nhom 4</h1>
                <br />
                <br />

                <h2 style="font-weight: bold">Thong tin chi tiet</h2>
                <div class="table-bordered">
                    <table class="table-striped" id="tbtPNR" runat="server" style="width: 100%; color: darkred; font-size: large">
                        <tr>
                            <td style="font-weight: bold">Ma ve</td>
                            <td>
                                <asp:Label ID="lblTransactionNo" runat="server"></asp:Label></td>
                        </tr>
                        <tr>
                            <td style="font-weight: bold">So ve</td>
                            <td>
                                <asp:Label ID="lblTotalTickets" runat="server"></asp:Label></td>
                        </tr>
                        <tr>
                            <td style="font-weight: bold">Tong tien</td>
                            <td>
                                <asp:Label ID="lblTotalAmount" runat="server"></asp:Label></td>
                        </tr>
                        <tr>
                            <td style="font-weight: bold">Ten xe</td>
                            <td>
                                <asp:Label ID="lblBusName" runat="server"></asp:Label></td>
                        </tr>
                    </table>
                </div>
                <br />
                <br />
                <asp:GridView ID="gdPaxDetails" runat="server" EmptyDataText="No Record Found...." AutoGenerateColumns="False" AllowPaging="true" PageSize="25" CssClass="table table-hover table-bordered" Style="margin-top: 5%" Width="100%">
                    <Columns>
                        <asp:TemplateField HeaderText="STT">
                            <ItemTemplate>
                                <%# Container.DataItemIndex+1 %>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField HeaderText="Ho" DataField="Lname" />
                        <asp:BoundField HeaderText="Ten" DataField="Fname" />
                        <asp:BoundField HeaderText="So dien thoai" DataField="Contact" />
                        <asp:BoundField HeaderText="Vi tri ghe" DataField="SeatNo" />
                         <asp:BoundField HeaderText="Ngay di" DataField="TravelDate" />
                         <asp:BoundField HeaderText="Tu" DataField="Origin" />
                        <asp:BoundField HeaderText="Den" DataField="Destination" />
                        <asp:BoundField HeaderText="Diem don" DataField="PlaceName" />
                    </Columns>
                </asp:GridView>
                <br />
                <br />
                <p style="text-align: center; font-style: italic; font-size: 16px">
                    Cam on ban da dat ve. Nho dem theo ve cua ban khi len xe. Chuc ban co mot chuyen di thu vi!
                </p>
            </div>
    </div>

    <footer class="footer" style="padding: 20px; background-color: #a8a3a3; border-top: 2px solid #808080; bottom: 0; width: 100%; position: fixed">
              <div class="main-footer">
                  <div class="container">
                      <div class="row">
                          <div class="col-xs-12 col-md-4">
                              <div class="widget w-footer widget_black_studio_tinymce">
                                  <p class="widget-title h3">Về chúng tôi</p>
                                  <div class="textwidget" style="font-size: 16px">
                                      <p>Dịch vụ cho thuê xe du lịch từ 4 chỗ, 7 chỗ, 16 chỗ đến 45 chỗ uy tín hàng đầu. Dàn xe đời mới, thủ tục đơn giản, bảng giá cho thuê xe cạnh tranh.. ✓100% Xe đời mới ✓ Xe đẹp ✓ Kinh nghiệm ✓ Nhiệt tình ✓cho thuê xe ô tô giá rẻ nhất tại Hà Nội.</p><p></p></div></div></div>
                          <div class="col-xs-12 col-md-4">
                              <div class="widget w-footer widget_nav_menu">
                                  <p class="widget-title h3">Dịch vụ của chúng tôi</p>
                                  <div class="menu-services-menu-container" style="font-size: 16px">
                                      <ul id="menu-services-menu" class="menu">
                                          <li id="menu-item-6494" class="menu-item">Thuê xe cưới Hà Nội – Dịch vụ trang trí xe hoa</li>
                                          <li id="menu-item-6493" class="menu-item">Thuê Xe Đi Tỉnh</li>
                                          <li id="menu-item-9133" class="menu-item">Xe Đi Du Lịch</li>
                                          <li id="menu-item-6495" class="menu-item">Xe Đi Lễ Hội</li>
                                          <li id="menu-item-6496" class="menu-item">Dịch Vụ Cho Thuê Xe Đi Biển</li><li id="menu-item-6497" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-6497">Xe Dcar Limo</li>
                                          <li id="menu-item-6498" class="menu-item">Xe đưa đón sân bay Nội Bài</li>
                                          <li id="menu-item-7562" class="menu-item">Xe Đưa Đón Học Sinh</li>
                                          <li id="menu-item-7563" class="menu-item">Dịch vụ xe đưa đón cán bộ công nhân viên</li>
                                          <li id="menu-item-8847" class="menu-item">Thuê xe theo tháng tại Hà Nội</li>
                                       </ul>
                                  </div></div></div>
                          <div class="col-xs-12 col-md-4">
                              <div class="widget w-footer widget-opening-hours">
                                  <p class="widget-title h3">Giờ làm việc</p>
                                  <div class="opening-times" style="font-size: 16px">
                                      <ul>
                                          <li class="weekday">Monday <span class="right">07:30-22:30</span></li>
                                          <li class="weekday">Tuesday <span class="right">07:30-22:30</span></li>
                                          <li class="weekday">Wednesday <span class="right">07:30-22:30</span></li>
                                          <li class="weekday">Thursday <span class="right">07:30-22:30</span></li>
                                          <li class="weekday">Friday <span class="right">07:30-22:30</span></li>
                                          <li class="weekday">Saturday <span class="right">08:30-17:30</span></li>
                                          <li class="weekday">Sunday <span class="right">08:30-17:30</span></li>
                                      </ul></div></div></div></div></div></div>
<a class="scrollToTop visible" href="#">
<i class="fa fa-angle-up"></i>
</a></footer>
</asp:Content>

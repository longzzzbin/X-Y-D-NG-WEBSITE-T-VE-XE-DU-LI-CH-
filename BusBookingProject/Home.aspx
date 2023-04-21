<%@ Page Title="" Language="C#" MasterPageFile="~/BusBookingMaster.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="BusBookingProject.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
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

         .center-block {
            float: none;
            margin-left: auto;
            margin-right: auto;
        }

        .input-group .icon-addon .form-control {
            border-radius: 0;
        }

        .icon-addon {
            position: relative;
            color: #555;
            display: block;
        }

            .icon-addon:after,
            .icon-addon:before {
                display: table;
                content: " ";
            }

            .icon-addon:after {
                clear: both;
            }

            .icon-addon.addon-md .glyphicon,
            .icon-addon .glyphicon,
            .icon-addon.addon-md .fa,
            .icon-addon .fa {
                position: absolute;
                z-index: 2;
                left: 10px;
                font-size: 14px;
                width: 20px;
                margin-left: -2.5px;
                text-align: center;
                padding: 10px 0;
                top: 1px;
            }

            .icon-addon.addon-lg .form-control {
                line-height: 1.33;
                height: 46px;
                font-size: 18px;
                padding: 10px 16px 10px 40px;
            }

            .icon-addon.addon-sm .form-control {
                height: 30px;
                padding: 5px 10px 5px 28px;
                font-size: 12px;
                line-height: 1.5;
            }

            .icon-addon.addon-lg .fa,
            .icon-addon.addon-lg .glyphicon {
                font-size: 18px;
                margin-left: 0;
                left: 11px;
                top: 4px;
            }

            .icon-addon.addon-md .form-control,
            .icon-addon .form-control {
                padding-left: 30px;
                float: left;
                font-weight: normal;
            }

            .icon-addon.addon-sm .fa,
            .icon-addon.addon-sm .glyphicon {
                margin-left: 0;
                font-size: 12px;
                left: 5px;
                top: -1px;
            }

            .icon-addon .form-control:focus + .glyphicon,
            .icon-addon:hover .glyphicon,
            .icon-addon .form-control:focus + .fa,
            .icon-addon:hover .fa {
                color: #2580db;
            }
    </style>
       <link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    <script>
        $(function () {
            $("#txtJourneyDate").datepicker();
        });
        $(function () {
            $("#txtReturnJourneyDate").datepicker();
        });
  </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="container" style="margin-top:8%">
         <div class="row ">
            <div class="col-lg-4 col-sm-4 col-md-2 col-sm-offset-2 col-md-offset-2" style="margin-left:30%">

                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h3 class="panel-title">Tìm kiếm chuyến đi sẵn có</h3>
                    </div>
                    <div class="panel-body">
                        <div id="divMessage" runat="server" />
                           <div class="col-xs-12 col-sm-12 col-md-12">
                                <div class="form-group">
                                   <asp:Label ID="lblAccType" runat="server" Text="Điểm xuất phát" Font-Bold="true"></asp:Label>
                                     <asp:DropDownList ID="ddlOrigin" class="form-control input-sm floatlabel" runat="server">
                                    </asp:DropDownList>
                                </div>
                            </div>
                            <div class="col-xs-12 col-sm-12 col-md-12">
                                <div class="form-group">
                                   <asp:Label ID="Label1" runat="server" Text="Điểm đến" Font-Bold="true"></asp:Label>
                                     <asp:DropDownList ID="ddlDestination" class="form-control input-sm floatlabel" runat="server">
                                    </asp:DropDownList>
                                </div>

                                </div>
                          <div class="col-xs-12 col-sm-12 col-md-12">
                                <div class="form-group">
                                    <asp:Label ID="lblDate" runat="server" Text="Ngày" Font-Bold="true"></asp:Label>
                                    <asp:TextBox ID="txtDate" runat="server" placeholder="DD/MM/YYYY" class="form-control input-sm floatlabel"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-xs-12 col-sm-12 col-md-12">
                                <div class="form-group">
                                    <asp:Button ID="btnSearch" runat="server" Text="Tìm kiếm" class="btn btn-success btn-block" OnClick="btnSearch_Click"/>
                                </div>
                            </div>
                     
                    </div>
                </div>
            </div>
        </div>
    </div>

    <footer class="footer" style="padding: 20px; background-color: #a8a3a3; border-top: 2px solid #808080; bottom: 0">
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
                                      </ul></div></div></div></div></div></div></footer>
    
</asp:Content>

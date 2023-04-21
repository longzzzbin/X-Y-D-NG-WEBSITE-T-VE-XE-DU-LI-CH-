<%@ Page Title="" Language="C#" MasterPageFile="~/BusBookingMaster.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="BusBookingProject.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container" style="margin-top:6%; width: 90%">
        <div class="row">
            <div class="col-lg-12">
                <asp:Image ID="imgBus" ImageAlign="AbsMiddle" ImageUrl="https://xedulichminhduc.com.vn/wp-content/uploads/2023/03/bg-xe-du-lich-minh-duc.jpg" style="width:100%" runat="server" />
                <h2 class="title">Dịch vụ cho thuê xe du lịch Hà Nội giá rẻ 4 - 45 chỗ</h2>
            </div>
            <div class="col-lg-12" style="margin-top:2%">
                <div class="panel panel-default" style="box-shadow: 10px 10px 5px #808080;">
                    <div class="panel-heading">
                         <div class=" panel-title">
                        <h2 style="text-align: center">Tất cả các phương thức và lĩnh vực đã được kiểm chứng</h2>
                        <p style="text-align: center; font-size: 16px">Công ty tổ chức với nhiều chi nhánh ở khắp các quận Hà Nội. Cho thuê xe ô tô cũng như phục vụ các nhu cầu di chuyển khắp các địa phương, điểm du lịch, tỉnh thành miền Bắc.</p>
                    </div>
                       </div>
                    <div class="row">
						<div class="col-12 col-md-3 icon-card-col flex mb-3">
							<div class="card icon-card card-no-border card-transparent">
								<div class="card-body py-4" style="text-align: center">
									<div class="mb-3">
										<img src="/img/car.png" alt=""/>
									</div>
									<h3 class="">Đa dạng các dòng xe</h3>
									<p style="font-size: 16px">
										Cung cấp tất cả các dòng xe từ 4 chỗ đến 45 chỗ đời mới. Những dòng xe sang trọng Dcar limousine đời mới, tiện nghi hiện đại <%: DateTime.Now.Year %> mang lại nhiều lựa chọn
									</p>
								<div class="cta-wrapper">
							</div>
						</div>
					</div>
			    </div>
				<div class="col-12 col-md-3 icon-card-col flex mb-3">
				<div class="card icon-card card-no-border card-transparent">
					<div class="card-body py-4" style="text-align: center">
						<div class="mb-3">
							<img style="width:110px" src="/img/one.png" alt=""/>
						</div>
						<h3 class="">Thương hiệu uy tín</h3>
						<p style="font-size: 16px">
							Là một trong những công ty triển vọng, phát triển mảnh mẽ ở Hà Nội. Thương hiệu cho thuê xe ô tô được nhiều báo chí, truyền hình đánh giá cao
						</p>
					    <div class="cta-wrapper">
						</div>
					</div>
				</div>
			</div>
			<div class="col-12 col-md-3 icon-card-col flex mb-3">
				<div class="card icon-card card-no-border card-transparent">
					<div class="card-body py-4" style="text-align: center">
						<div class="mb-3">
							<img style="width:110px" src="https://i.pinimg.com/236x/ad/b7/3f/adb73fbbb4520ef60aec229693f9a7fb.jpg" alt=""/>
						</div>
						<h3 class="">Nhân viên nhiệt tình</h3>
						<p style="font-size: 16px">
							Toàn bộ nhân viên, đội ngũ lái xe năng động, yêu nghề và đã được đào tạo tuyển chọn khắt khe. Thủ tục thuận tiện - Support 24/7
						</p>
						<div class="cta-wrapper">
						</div>
					</div>
				</div>
			</div>
			<div class="col-12 col-md-3 icon-card-col flex mb-3">
				<div class="card icon-card card-no-border card-transparent">
					<div class="card-body py-4" style="text-align: center">
						<div class="mb-3">
							<img style="width:116px" src="/img/money.png" alt=""/>
						</div>
						<h3 class="">Giá cả hợp lí</h3>
						<p style="font-size: 16px">
							Luôn mang đến mức giá thuê xe rẻ nhất trên thị trường và những ưu đãi giảm giá cho những khách hàng liên hệ đặt thuê xe sớm...
						</p>
						<div class="cta-wrapper">
						</div>
					</div>
				</div>
			</div>								
		</div>
     </div>
    </div>
             <div class="col-lg-12" style="margin-top:2%">
                <div class="panel panel-default" >
                    <div class="panel-heading">
                         <div class=" panel-title">
                        <h2 style="text-align: center">Mô hình kinh doanh và các loại phương tiện</h2>
                        <p style="text-align: center;  font-size: 16px">
					        Công ty hoạt động bằng cách ký hợp đồng cho thuê xe với các tổ chức, doanh nghiệp theo mức phí thỏa thuận. Cho thuê xe tự lái và có lái phục vụ luôn được điều hành một cách độc lập bằng nhiều cấu trúc kinh doanh. Luôn mang lại những lợi thế lớn, mức giá hợp lý cho từng chuyến đi.
					    </p>
                    </div>
                       </div>
                    <div class="row">
						<div class="col-12 col-md-4 icon-card-col flex mb-3">
							<div class="card icon-card card-no-border card-transparent">
								<div class="card-body py-4" style="text-align: center">
									<div class="mb-3">
										<img src="https://travelcar.vn/img/4c.png?auto=format&ch=Width&crop=focalpoint&fit=min&fp-x=0.5&fp-y=0.5&h=225&q=50&w=400&s=40a1933daaaf9039a1e0678d1aba533c" alt=""/>
									</div>
									<h3 class="">4 chỗ</h3>
									<p style="font-size: 16px">
										Phù hợp với những khách hàng là cá nhân, công ty thuê xe 4 chỗ để đi du lịch, đi công tác hoặc đơn giản là đi về quê vào các ngày cuối tuần.
									</p>
								<div class="cta-wrapper">
							</div>
						</div>
					</div>
			    </div>
				<div class="col-12 col-md-4 icon-card-col flex mb-3">
				<div class="card icon-card card-no-border card-transparent">
					<div class="card-body py-4" style="text-align: center">
						<div class="mb-3">
							<img src="https://travelcar.vn/img/7c.png?auto=format&ch=Width&crop=focalpoint&fit=min&fp-x=0.5&fp-y=0.5&h=225&q=50&w=400&s=9f478e020ad96443cba60630e188e8b9" alt=""/>
						</div>
						<h3 class="">7 chỗ</h3>
						<p style="font-size: 16px">
							Cần một chiếc xe đời mới, hình thức đẹp đã bao gồm lái xe và các chi phí khác, không thể tìm được ở đâu dịch vụ cho thuê xe 7 chỗ tốt hơn.
						</p>
					    <div class="cta-wrapper">
						</div>
					</div>
				</div>
			</div>
			<div class="col-12 col-md-4 icon-card-col flex mb-3">
				<div class="card icon-card card-no-border card-transparent">
					<div class="card-body py-4" style="text-align: center">
						<div class="mb-3">
							<img src="https://travelcar.vn/img/16c.png?auto=format&ch=Width&crop=focalpoint&fit=min&fp-x=0.5&fp-y=0.5&h=225&q=50&w=400&s=17a3660711b6a7c57e6232cb6db85f3d" alt=""/>
						</div>
						<h3 class="">16 chỗ</h3>
						<p style="font-size: 16px">
							Cam kết cho thuê xe 16 chỗ giá rẻ và hợp lý dựa trên các yêu tố: Khoảng cách km, lộ trình, thời gian, số ngày.. trong những công ty tại Hà Nội.
						</p>
						<div class="cta-wrapper">
						</div>
					</div>
				</div>
			</div>
			<div class="col-12 col-md-4 icon-card-col flex mb-3">
				<div class="card icon-card card-no-border card-transparent">
					<div class="card-body py-4" style="text-align: center">
						<div class="mb-3">
							<img src="https://travelcar.vn/img/29c.png?auto=format&ch=Width&crop=focalpoint&fit=min&fp-x=0.5&fp-y=0.5&h=225&q=50&w=400&s=40a1933daaaf9039a1e0678d1aba533c" alt=""/>
						</div>
						<h3 class="">29 chỗ</h3>
						<p style="font-size: 16px">
							Yên tâm về chất lượng đều là mới, điều hòa tốt và an toàn cho các chuyến đi, Quý khách hãy đặt thuê xe 29 chỗ sớm để hưởng các ưu đãi liền tay.
						</p>
						<div class="cta-wrapper">
						</div>
					</div>
				</div>
			</div>			
			<div class="col-12 col-md-4 icon-card-col flex mb-3">
				<div class="card icon-card card-no-border card-transparent">
					<div class="card-body py-4" style="text-align: center">
						<div class="mb-3">
							<img src="https://travelcar.vn/img/35c.png?auto=format&ch=Width&crop=focalpoint&fit=min&fp-x=0.5&fp-y=0.5&h=225&q=50&w=400&s=9f478e020ad96443cba60630e188e8b9" alt=""/>
						</div>
						<h3 class="">35 chỗ</h3>
						<p style="font-size: 16px">
							Cách tốt nhất để hiểu tại sao thương hiệu được hơn 15.000 khách hàng lá cá nhân, công ty, tập đoàn nước ngoài tin tưởng dịch vụ thuê xe 35 chỗ và sử dụng.
						</p>
						<div class="cta-wrapper">
						</div>
					</div>
				</div>
			</div>		
			<div class="col-12 col-md-4 icon-card-col flex mb-3">
				<div class="card icon-card card-no-border card-transparent">
					<div class="card-body py-4" style="text-align: center">
						<div class="mb-3">
							<img src="https://travelcar.vn/img/45c.png?auto=format&ch=Width&crop=focalpoint&fit=min&fp-x=0.5&fp-y=0.5&h=225&q=50&w=400&s=17a3660711b6a7c57e6232cb6db85f3d" alt=""/>
						</div>
						<h3 class="">45 chỗ</h3>
						<p style="font-size: 16px">
							Luôn quan tâm đến chất lượng xe, giá thuê xe 45 chỗ cũng như dịch vụ và thái độ phục vụ của lái xe iúp chuyến đi của quý khách an toàn và thoải mái hơn .
						</p>
						<div class="cta-wrapper">
						</div>
					</div>
				</div>
			</div>
		</div>
      </div>
    </div>            
</div>
		<div class="row">
			<div class="col-12 col-lg-5">
				<img src="https://travelcar.vn/img/phuc-vu-o-hanoi.webp?auto=format&ch=Width&fit=max&q=50&w=1200&s=cd8c3d59f13b53e2087bdce4cdd5baac" alt="" class="d-none d-md-block" style="width: 500px"/>
			</div>
			<div class="col-12 col-lg-7 text-left mt-md-4 mt-lg-0 page-section-features-content">
				<div id="create-custom-reports" class="page-section-anchor">
				</div>
				<div class="page-section-headline">
					<h2 class="page-section-title">Phục vụ nhu cầu thuê xe ở Hà Nội</h2>
				</div>
				<div class="page-section-body">
					<p style="font-size: 16px">Mang lại lợi ích cho cộng đồng , chúng tôi cam kết tìm ra những cách tốt hơn để đưa bạn đến nơi cần đến. Và trở thành địa chỉ cho thuê xe uy tín của tất cả mọi người có nhu cầu thuê xe ở Hà Nội.</p>
					<ul style="font-size: 16px">
						<li>Nhận hợp đồng xe du lịch, tham quan lễ hội</li>
						<li>Đưa đón học sinh, nhân viên hàng ngày </li>
						<li>Phục vụ xe đi sân bay 2 chiều, xe đi công tác các tỉnh miền Bắc </li>
						<li>Các hoạt động khác như: cho thuê xe đi biển, phục vụ cưới hỏi, xe ký tháng dài hạn </li>
					</ul>
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

    <style>
        .title {
            position: absolute; 
            top: 50%; 
            left: 50%;
            transform: translate(-50%, -50%); 
            color: #fff;            
        }
    </style>
</asp:Content>

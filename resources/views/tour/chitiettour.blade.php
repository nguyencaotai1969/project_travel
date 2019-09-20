@extends('master-layout')
@section('title','Chi tiết tour')
@section('content')
<link rel="stylesheet" type="text/css" href="{{asset('css/chitiettour/chitiettour.css')}}">
<div class="container chitiettour">
	<h3 class="text-center danhsachtour">Danh Sách Tour</h3>
         <div class="row">
             <div class="col-md-12 col-sm-12">
               <div class="vertical-tabs">
                  <ul class="nav nav-tabs" role="tablist">
                     <li class="nav-item pb-3">
                        <a class="nav-link active" data-toggle="tab" href="#home-v" role="tab" aria-controls="home">Chương Trình Tour</a>
                     </li>
                     <li class="nav-item pb-3">
                        <a class="nav-link" data-toggle="tab" href="#profile-v" role="tab" aria-controls="profile">Chi Tiết Tour</a>
                     </li>
                     <li class="nav-item pb-3">
                        <a class="nav-link" data-toggle="tab" href="#messages-v" role="tab" aria-controls="messages">Lưu ý</a>
                     </li>
                  </ul>
                  <div class="tab-content">
                     <div class="tab-pane active" id="home-v" role="tabpanel">
                        <div class="sv-tab-panel">
                        	<b><i class="fas fa-map-marker-alt">&nbsp;</i>TP. HỒ CHÍ MINH - MỘC BÀI - SIEM REAP</b>
                        	<p>Xe và hướng dẫn viên Vietravel đón Quý khách tại 190 Pasteur, Q.3, TP.HCM, khởi hành đến cửa khẩu Mộc Bài. Ăn sáng trên đường. Đến Mộc Bài, Quý khách làm thủ tục qua cửa khẩu. Xe và hướng dẫn viên địa phương đón đoàn và đưa đi dùng bữa trưa tại nhà hàng địa phương . Sau đó, Quý khách tiếp tục lên đường đi Siem Reap. Đến nơi, Quý khách về nhận phòng tại khách sạn . Ăn tối và tự do nghỉ ngơi.
							Xem nội dung đầy đủ tại: https://travel.com.vn/tourNNSGN100-109-240919XE-D-O/siem-reap-phnom-penh-khach-san-4sao,-tour-tieu-chuan.aspx?LM=1
							Nguồn: travel.com.vn</p>
							<b><i class="fas fa-map-marker-alt">&nbsp;</i>SIEM REAP (Ăn ba bữa)</b>.
							<p>Ăn sáng tại khách sạn. Quý khách tham quan Cổng nam Angkor Thom và Ta Prohm, đây là những cung điện lớn nhất với các mặt Phật được tạc trên đá cùng những phù điêu tuyệt đẹp, xe đưa Quý khách ngang qua đền Bayon, Baphuon và Quảng trường đấu voi. Tiếp theo, quý khách tham quan đền Angkor Wat - Một trong những kỳ quan của thế giới . Sau bữa trưa, quý khách sẽ trở về khách sạn nghỉ ngơi….trước khi dùng ăn tối quý khách sẽ tham quan đồi Bakheng ngắm  nhìn đất nước Chùa Tháp xinh đẹp và huyền bí. Quý khách dùng bữa tối và thưởng thức chương trình ca múa nhạc truyền thống của người Khmer. Sau đó, Quý khách trở về khách sạn nghỉ ngơi.

							Xem nội dung đầy đủ tại: https://travel.com.vn/tourNNSGN100-109-240919XE-D-O/siem-reap-phnom-penh-khach-san-4sao,-tour-tieu-chuan.aspx?LM=1
							Nguồn: travel.com.vn</p>
							<b><i class="fas fa-map-marker-alt">&nbsp;</i>PHNOM PENH - MỘC BÀI - TP. HỒ CHÍ MINH (Ăn sáng, ăn trưa)</b>.
							<p>Ăn sáng tại khách sạn. Quý khách lên đường đến Phnom Penh - Thủ đô của Vương quốc Campuchia. Quý khách dùng bữa trưa tại nhà hàng địa phương ở Phnom Penh và nhận phòng tại khách sạn 4 sao. Buổi chiều, Quý khách đi tham quan Wat Phnom - Một ngôi chùa rất nổi tiếng tại thành phố Phnom Penh, tiếp tục tham quan Chùa Bạc và Hoàng Cung.
							Sau đó, Quý khách tự do tham quan và mua sắm tại City Jewelry. Sau bữa tối, Quý khách tham quan và tự do thử vận may tại Casino nổi tiếng của Campuchia.
							Xem nội dung đầy đủ tại: https://travel.com.vn/tourNNSGN100-109-240919XE-D-O/siem-reap-phnom-penh-khach-san-4sao,-tour-tieu-chuan.aspx?LM=1
							Nguồn: travel.com.vn
						</p>
                      </div>
                     </div>
                     <div class="tab-pane" id="profile-v" role="tabpanel">
                        <div class="sv-tab-panel">
						<b><i class="fas fa-plane-departure">&nbsp;</i>THÔNG TIN CHUYẾN BAY</b>
									<table border="1" cellpadding="10">
									<tr>
										<td>Ngày đi</td>
										<td>Đến</td>
										<td>chuyến bay</td>
									</tr>
									<tr>
										<td>Ngày đi: 24/09/2019 04:30</td>
										<td>Đến: 24/09/2019 18:00</td>
										<td>Chuyến bay: XE DI</td>
									</tr>
									</table>
                        </div>
                     </div>
                     <div class="tab-pane" id="messages-v" role="tabpanel">
                        <div class="sv-tab-panel">
                        	<tr><b>Lưu Ý</b></tr>
                        	<p>Các điều kiện đăng ký tour:</p>
                        	<p>Hộ chiếu của Quý khách phải còn thời hạn trên 6 tháng tính đến ngày về. Quý khách vui lòng gửi hộ chiếu gốc cho  Vietravel trước khi khởi hành ít nhất 02 ngày làm việc.</p>
                        	<p>Khi đăng ký quý khách vui lòng đóng tiền cọc 50% để giữ chỗ và bổ sung bản photo hộ chiếu. Phần còn lại thanh toán hết trước 1 tuần đối với ngày thường, trước 2 tuần đối với tour lễ, Tết. Sau khi đóng cọc Vietravel sẽ xác nhận với Quý khách số ghế ngồi trên xe.</p>
                        	<p>Giá trẻ em áp dụng từ 2 tuổi cho đến dưới 12 tuổi.</p>
                        	<p>Nếu yêu cầu ở phòng đơn, Quý khách vui lòng thanh toán tiền phụ thu.</p>
                        	<p>Quý khách mang 2 Quốc tịch hoặc Travel document (chưa nhập quốc tịch) vui lòng thông báo với nhân viên bán tour ngay thời điểm đăng ký tour và nộp bản gốc kèm các giấy tờ có liên quan (nếu có). 
							Quý khách chỉ mang thẻ xanh (thẻ tạm trú tại nước ngoài) và không còn hộ chiếu VN còn hiệu lực thì không đăng ký du lịch sang nước thứ ba được.
							</p>
							<p>Quý khách có nhu cầu xuất Hóa đơn, vui lòng báo cho nhân viên lúc đăng ký và thanh toán tour. Vietravel sẽ không giải quyết các trường hợp xuất Hóa đơn cho khách sau thời gian tour đã khởi hành
							- Khách nữ từ 55 tuổi trở lên và khách nam từ 60 trở lên: nên có người thân dưới 55 tuổi (đầy đủ sức khỏe) đi cùng. Riêng khách từ 70 tuổi trở lên: bắt buộc phải có người thân dưới 55 tuổi (đầy đủ sức khỏe) đi cùng. Ngoài ra, khách từ 75 tuổi trở lên khuyến khích đóng thêm phí bảo hiểm cao cấp.
							</p>					
                        </div>
                     </div>
                     
                  </div>
               </div>
            </div>
         </div>
      </div>
@endsection

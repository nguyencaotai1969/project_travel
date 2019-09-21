@extends('master-layout')
@section('title','Chi tiết điểm đến')
@section('content')
    @include('carosel_home')
    <link rel="stylesheet" type="text/css" href="{{asset('css/tour/chitietdiemden.css')}}">
    <!-- Link font GG -->
    <link
        href="https://fonts.googleapis.com/css?family=Baloo|Charm|IBM+Plex+Serif|Lobster|Playfair+Display&display=swap"
        rel="stylesheet">

    <link
        href="https://fonts.googleapis.com/css?family=Baloo|Baloo+Paaji|Charm|IBM+Plex+Serif|Lobster|Pattaya|Playfair+Display&display=swap"
        rel="stylesheet">

    <div id="content">
        <div class="container detail-des">
            <h3>Du lịch Hạ Long</h3><br><br>
            <div class="row text-left text-xs-center text-md-left" id="des-detail">
                <div class="image-1 col-md-5">
                    <img class="col-md-12" src="{{asset('img/tour/200944.jpg')}}" alt="">
                </div>
                <div class="detail col-md-7 ml-auto">
                    <p>Vịnh Hạ Long nơi rồng đáp xuống, là danh thắng quốc gia được xếp hạng từ năm 1962. Hạ Long có
                        1.969 hòn đảo, lô nhô trên mặt biển, nổi tiếng nhất là các hòn Lư Hương, Gà Chọi, Cánh Buồm, Mâm
                        Xôi, đảo Ngọc Vừng, Ti Tốp, Tuần Châu. Hạ Long như bức tranh thủy mặc khổng lồ, tuyệt đẹp, xứng
                        đáng là biểu tượng du lịch Việt Nam.</p>

                </div>
            </div>
            <br><br>

            <div class="row" id="list">
                <div class="col-lg-9 col-md-12" id="tour-list">
                    <h4>Tour Hạ Long</h4>
                    <div class="tour row">
                        <div class="image-2 col-md-4">
                            <img src="{{asset('img/tour/1554713265_tour-ha-long-3.jpg')}}" alt="">
                        </div>
                        <div class="info col-md-8">
                            <h5><a href="#"><b>Tour du lịch Hà Nội – Hạ Long 2 ngày 1 đêm – Du ngoạn cảnh đẹp kì quan
                                        thiên nhiên thế giới</b></a></h5>
                            <div class="row">
                                <div class="left col-md-6">
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i><br>
                                    <span>Mã: MB0902</span><br>
                                    <span>Thời gian: 2 ngày 1 đêm</span><br>
                                    <span>Khởi hành: Hà Nội - 10/9/2019</span><br>
                                </div>
                                <div class="right col-md-5 ml-auto">
                                    <span>Số chỗ còn: 5</span><br>
                                    <span>Giá 1 khách:</span><br>
                                    <span style="color: red; font-size: 22px"><b>2.150.000đ</b></span>
                                </div>
                            </div>
                        </div>
                    </div>
                    <br><br>
                    <div class="tour row">
                        <div class="image-2 col-md-4">
                            <img src="{{asset('img/tour/1554713265_tour-ha-long-3.jpg')}}" alt="">
                        </div>
                        <div class="info col-md-8">
                            <h5><a href="#"><b>Tour du lịch Hà Nội – Hạ Long 2 ngày 1 đêm – Du ngoạn cảnh đẹp kì quan
                                        thiên nhiên thế giới</b></a></h5>
                            <div class="row">
                                <div class="left col-md-6">
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i><br>
                                    <span>Mã: MB0902</span><br>
                                    <span>Thời gian: 2 ngày 1 đêm</span><br>
                                    <span>Khởi hành: Hà Nội - 10/9/2019</span><br>
                                </div>
                                <div class="right col-md-5 ml-auto">
                                    <span>Số chỗ còn: 5</span><br>
                                    <span>Giá 1 khách:</span><br>
                                    <span style="color: red; font-size: 22px"><b>2.150.000đ</b></span>
                                </div>
                            </div>
                        </div>
                    </div>
                    <br>
                    <nav aria-label="Page navigation example">
                        <ul class="pagination justify-content-end">
                            <li class="page-item">
                                <a class="page-link" href="#" aria-label="Previous">
                                    <span aria-hidden="true">&laquo;</span>
                                </a>
                            </li>
                            <li class="page-item"><a class="page-link" href="#">1</a></li>
                            <li class="page-item"><a class="page-link" href="#">2</a></li>
                            <li class="page-item"><a class="page-link" href="#">3</a></li>
                            <li class="page-item">
                                <a class="page-link" href="#" aria-label="Next">
                                    <span aria-hidden="true">&raquo;</span>
                                </a>
                            </li>
                        </ul>
                    </nav>
                </div>
                <div class="col-lg-3 col-md-12" id="list-news">
                    <h4>Tin tức</h4>
                    <div class="row news">
                        <img src="{{asset('img/tour/262_to_hop_giai_tri_sun_world_halong_complex_co_gi.jpg')}}" alt="">
                        <a href="#"><b>Ngắm toàn cảnh Hạ Long với cáp treo Nữ Hoàng</b></a>
                    </div>
                    <br>
                    <div class="row news">
                        <img src="{{asset('img/tour/bao-tang-quang-ninh.png')}}" alt="">
                        <a href="#"><b>Điểm nhấn mới của du lịch Hạ Long</b></a>
                    </div>
                    <br><br>
                </div>
            </div>

        </div>
    </div>
@endsection

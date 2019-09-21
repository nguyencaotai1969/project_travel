@extends('master-layout')
@section('title','Chi tiết điểm đến')
@section('content')
    @include('carosel_home')
    <link rel="stylesheet" type="text/css" href="{{asset('css/tour/dstour.css')}}">
    <link
        href="https://fonts.googleapis.com/css?family=Baloo|Charm|IBM+Plex+Serif|Lobster|Playfair+Display&display=swap"
        rel="stylesheet">
    <link
        href="https://fonts.googleapis.com/css?family=Baloo|Baloo+Paaji|Charm|IBM+Plex+Serif|Lobster|Pattaya|Playfair+Display&display=swap"
        rel="stylesheet">
    <div id="content">
        <div class="container ds-tour">
            <h3>Tour miền Bắc</h3><br><br>

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

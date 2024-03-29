@extends('master-layout')
@section('title','Trang Chủ')
@section('content')
    @include('carosel_home')
    <link rel="stylesheet" type="text/css" href="{{asset('css/trangchu/trangchu.css')}}">

    <div class="container">
        <div class="text-center tour-gio-vang pt-2">
            <h2>Tour Giờ Vàng Giá Sốc</h2>
            <p>Giờ Vàng Giá Ưu Đãi</p>
        </div>
        <div class="row">

            <div class="new-arrival">

                <div class="titlebar">

                    <div class="next-back">
                    <span>
                        <a data-slide="prev" href="#Carousel" class="left carousel-control"><img
                                src="{{asset('img/back_botton.png')}}" width="24"
                                alt="">
                        </a>
                    </span>
                        <span>
                        <a data-slide="next" href="#Carousel" class="right carousel-control"><img
                                src="{{asset('img/next_botton.png')}}" width="20" alt="">
                        </a>
                    </span>
                    </div>
                </div>
                <div class="arrival-product">
                    <div id="Carousel" class="carousel slide" data-ride="carousel">
                        <!-- Carousel items -->
                        <div class="carousel-inner">
                            <div class="carousel-item active">
                                <div class="row">
                                    <div class="col-md-3 col-sm-3 col-xs-3">
                                        <div class="product-grid">
                                            <div class="product-image">
                                                <a href="{{route('chitiettour')}}">
                                                    <img class="pic-1"
                                                         src="https://travel.com.vn/Content/ThemeHe/img/dd1.jpg">
                                                    <img class="pic-2"
                                                         src="https://travel.com.vn/Content/ThemeHe/img/dd1.jpg">
                                                </a>

                                                <span class="product-new-label demo"></span>
                                                <span class="product-discount-label">20%</span>
                                            </div>
                                            <ul class="rating">
                                                <span>Khách Sạn :</span>
                                                <li class="fa fa-star"></li>
                                                <li class="fa fa-star"></li>
                                                <li class="fa fa-star"></li>
                                                <li class="fa fa-star"></li>
                                                <li class="fa fa-star disable"></li>
                                            </ul>
                                            <div class="product-content">
                                                <h3 class="title"><a href="{{route('chitiettour')}}">Tour Đà Lạc<img
                                                            src="{{asset('img/hot.gif')}}" alt=""></a></h3>
                                                <div class="price">1,000,000đ
                                                    <span>2,000,000đ</span>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-3 col-sm-3 col-xs-3">
                                        <div class="product-grid">
                                            <div class="product-image">
                                                <a href="{{route('chitiettour')}}">
                                                    <img class="pic-1"
                                                         src="https://travel.com.vn/Content/ThemeHe/img/dd2.jpg">
                                                    <img class="pic-2"
                                                         src="https://travel.com.vn/Content/ThemeHe/img/dd1.jpg">
                                                </a>

                                                <span class="product-new-label demo"></span>
                                                <span class="product-discount-label">50%</span>
                                            </div>
                                            <ul class="rating">
                                                <span>Khách Sạn :</span>
                                                <li class="fa fa-star"></li>
                                                <li class="fa fa-star"></li>
                                                <li class="fa fa-star"></li>
                                                <li class="fa fa-star"></li>
                                                <li class="fa fa-star disable"></li>
                                            </ul>
                                            <div class="product-content">
                                                <h3 class="title"><a href="{{route('chitiettour')}}">Tour Cao Bằng <img
                                                            src="{{asset('img/hot.gif')}}" alt=""></a></h3>
                                                <div class="price">1,000,000đ
                                                    <span>2,000,000đ</span>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-3 col-sm-3 col-xs-3">
                                        <div class="product-grid">
                                            <div class="product-image">
                                                <a href="{{route('chitiettour')}}">
                                                    <img class="pic-1"
                                                         src="https://www.travelvietnam.com.vn/images/tour/items/img1/at_nam-phi-johannesburg-pretoria-sun-city-cape-town-khoi-hanh-tu-ha-noi_4daa3c0bba8f501d8d7d7b31dff8939d.png">
                                                    <img class="pic-2"
                                                         src="https://travel.com.vn/Content/ThemeHe/img/dd1.jpg">
                                                </a>

                                                <span class="product-new-label demo"></span>
                                                <span class="product-discount-label">50%</span>
                                            </div>
                                            <ul class="rating">
                                                <span>Khách Sạn :</span>
                                                <li class="fa fa-star"></li>
                                                <li class="fa fa-star"></li>
                                                <li class="fa fa-star"></li>
                                                <li class="fa fa-star  disable"></li>
                                                <li class="fa fa-star  disable"></li>
                                            </ul>
                                            <div class="product-content">
                                                <h3 class="title"><a href="{{route('chitiettour')}}">Tour Hải Phòng<img
                                                            src="{{asset('img/hot.gif')}}" alt=""></a></h3>
                                                <div class="price">1,000,000đ
                                                    <span>2,000,000đ</span>
                                                </div>

                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-3 col-sm-3 col-xs-3">
                                        <div class="product-grid">
                                            <div class="product-image">
                                                <a href="{{route('chitiettour')}}">
                                                    <img class="pic-1"
                                                         src="https://www.travelvietnam.com.vn/images/tour/items/img1/at_nam-phi-johannesburg-pretoria-sun-city-cape-town-khoi-hanh-tu-ha-noi_4daa3c0bba8f501d8d7d7b31dff8939d.png">
                                                    <img class="pic-2"
                                                         src="https://travel.com.vn/Content/ThemeHe/img/dd1.jpg">
                                                </a>

                                                <span class="product-new-label demo"></span>
                                                <span class="product-discount-label">50%</span>
                                            </div>
                                            <ul class="rating">
                                                <span>Khách Sạn :</span>
                                                <li class="fa fa-star"></li>
                                                <li class="fa fa-star"></li>
                                                <li class="fa fa-star"></li>
                                                <li class="fa fa-star"></li>
                                                <li class="fa fa-star disable"></li>
                                            </ul>
                                            <div class="product-content">
                                                <h3 class="title"><a href="{{route('chitiettour')}}">Tour Bắc Bộ<img
                                                            src="{{asset('img/hot.gif')}}" alt=""></a></h3>
                                                <div class="price">1,000,000đ
                                                    <span>2,000,000đ</span>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="carousel-item">
                                <div class="carousel-inner">
                                    <div class="carousel-item active">
                                        <div class="row">
                                            <div class="col-md-3 col-sm-3 col-xs-3">
                                                <div class="product-grid">
                                                    <div class="product-image">
                                                        <a href="{{route('chitiettour')}}">
                                                            <img class="pic-1"
                                                                 src="https://travel.com.vn/Content/ThemeHe/img/dd1.jpg">
                                                            <img class="pic-2"
                                                                 src="https://travel.com.vn/Content/ThemeHe/img/dd1.jpg">
                                                        </a>

                                                        <span class="product-new-label demo"></span>
                                                        <span class="product-discount-label">20%</span>
                                                    </div>
                                                    <ul class="rating">
                                                        <span>Khách Sạn :</span>
                                                        <li class="fa fa-star"></li>
                                                        <li class="fa fa-star"></li>
                                                        <li class="fa fa-star"></li>
                                                        <li class="fa fa-star"></li>
                                                        <li class="fa fa-star disable"></li>
                                                    </ul>
                                                    <div class="product-content">
                                                        <h3 class="title"><a href="{{route('chitiettour')}}">Tour Đà Lạc<img
                                                                    src="{{asset('img/hot.gif')}}" alt=""></a></h3>
                                                        <div class="price">1,000,000đ
                                                            <span>2,000,000đ</span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-3 col-sm-3 col-xs-3">
                                                <div class="product-grid">
                                                    <div class="product-image">
                                                        <a href="{{route('chitiettour')}}">
                                                            <img class="pic-1"
                                                                 src="https://travel.com.vn/Content/ThemeHe/img/dd2.jpg">
                                                            <img class="pic-2"
                                                                 src="https://travel.com.vn/Content/ThemeHe/img/dd1.jpg">
                                                        </a>

                                                        <span class="product-new-label demo"></span>
                                                        <span class="product-discount-label">50%</span>
                                                    </div>
                                                    <ul class="rating">
                                                        <span>Khách Sạn :</span>
                                                        <li class="fa fa-star"></li>
                                                        <li class="fa fa-star"></li>
                                                        <li class="fa fa-star"></li>
                                                        <li class="fa fa-star"></li>
                                                        <li class="fa fa-star disable"></li>
                                                    </ul>
                                                    <div class="product-content">
                                                        <h3 class="title"><a href="{{route('chitiettour')}}">Tour Cao
                                                                Bằng<img src="{{asset('img/hot.gif')}}" alt=""></a></h3>
                                                        <div class="price">1,000,000đ
                                                            <span>2,000,000đ</span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-3 col-sm-3 col-xs-3">
                                                <div class="product-grid">
                                                    <div class="product-image">
                                                        <a href="#">
                                                            <img class="pic-1"
                                                                 src="https://www.travelvietnam.com.vn/images/tour/items/img1/at_nam-phi-johannesburg-pretoria-sun-city-cape-town-khoi-hanh-tu-ha-noi_4daa3c0bba8f501d8d7d7b31dff8939d.png">
                                                            <img class="pic-2"
                                                                 src="https://travel.com.vn/Content/ThemeHe/img/dd1.jpg">
                                                        </a>

                                                        <span class="product-new-label demo"></span>
                                                        <span class="product-discount-label">50%</span>
                                                    </div>
                                                    <ul class="rating">
                                                        <span>Khách Sạn :</span>
                                                        <li class="fa fa-star"></li>
                                                        <li class="fa fa-star"></li>
                                                        <li class="fa fa-star"></li>
                                                        <li class="fa fa-star  disable"></li>
                                                        <li class="fa fa-star  disable"></li>
                                                    </ul>
                                                    <div class="product-content">
                                                        <h3 class="title"><a href="#">Tour Hải Phòng<img
                                                                    src="{{asset('img/hot.gif')}}" alt=""></a></h3>
                                                        <div class="price">1,000,000đ
                                                            <span>2,000,000đ</span>
                                                        </div>

                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-3 col-sm-3 col-xs-3">
                                                <div class="product-grid">
                                                    <div class="product-image">
                                                        <a href="#">
                                                            <img class="pic-1"
                                                                 src="https://www.travelvietnam.com.vn/images/tour/items/img1/at_nam-phi-johannesburg-pretoria-sun-city-cape-town-khoi-hanh-tu-ha-noi_4daa3c0bba8f501d8d7d7b31dff8939d.png">
                                                            <img class="pic-2"
                                                                 src="https://travel.com.vn/Content/ThemeHe/img/dd1.jpg">
                                                        </a>

                                                        <span class="product-new-label demo"></span>
                                                        <span class="product-discount-label">50%</span>
                                                    </div>
                                                    <ul class="rating">
                                                        <span>Khách Sạn :</span>
                                                        <li class="fa fa-star"></li>
                                                        <li class="fa fa-star"></li>
                                                        <li class="fa fa-star"></li>
                                                        <li class="fa fa-star"></li>
                                                        <li class="fa fa-star disable"></li>
                                                    </ul>
                                                    <div class="product-content">
                                                        <h3 class="title"><a href="#">Tour Bắc Bộ<img
                                                                    src="{{asset('img/hot.gif')}}" alt=""> </a></h3>
                                                        <div class="price">1,000,000đ
                                                            <span>2,000,000đ</span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                    </div>
                                    <
                                </div>
                            </div>
                        </div>
                    </div>
                    <!--Carousel-->
                </div>
            </div>
        </div>
    </div>



    {{-- Tour khuyến mai --}}
    <div class="container">
        <h2 class="text-center tour-gio-vang">Tour Khuyến Mãi</h2>
        <div class="row" id="ads">
            <!-- Category Card -->
            <div class="col-md-4 col-xs-12 col-sm-12 p-2">
                <div class="card rounded">
                    <div class="card-image zoom">
                        <span class="card-notify-badge">2 ngày 3 đêm</span>
                        <span class="card-notify-year">50%</span>
                        <img class="img-fluid" src="https://travel.com.vn/Images/LastMinute/lm_190911075159_562321.jpg"
                             alt="Alternate Text"/>
                    </div>
                    <div class="card-image-overlay m-auto">
                        <span class="card-detail-badge">28,000,000đ</span>
                        <span class="card-detail-badge khuyenmai-giamgia"><Strike>2,000,000đ</Strike></span>
                    </div>
                    <div class="card-body text-center">
                        <div class="ad-title m-auto">
                            <h5>Phú Quốc</h5>
                        </div>
                        <a class="ad-btn" href="{{route('chitiettour')}}">Xem</a>
                    </div>
                </div>
            </div>
            <div class="col-md-4 col-xs-12 col-sm-12 p-2">
                <div class="card rounded">
                    <div class="card-image">
                        <span class="card-notify-badge">2 ngày 3 đêm</span>
                        <span class="card-notify-year">20%</span>
                        <img class="img-fluid" src="https://travel.com.vn/Images/tour/tfd_180228011522_625701.jpg"
                             alt="Alternate Text"/>
                    </div>
                    <div class="card-image-overlay m-auto">
                        <span class="card-detail-badge">28,000,000đ</span>
                        <span class="card-detail-badge khuyenmai-giamgia"><Strike>2,000,000đ</Strike></span>
                    </div>
                    <div class="card-body text-center">
                        <div class="ad-title m-auto">
                            <h5>Phú Quốc</h5>
                        </div>
                        <a class="ad-btn" href="{{route('chitiettour')}}">Xem</a>
                    </div>
                </div>
            </div>

            <div class="col-md-4 col-xs-12 col-sm-12 p-2">
                <div class="card rounded">
                    <div class="card-image">
                        <span class="card-notify-badge">2 ngày 3 đêm</span>
                        <span class="card-notify-year">10%</span>
                        <img class="img-fluid" src="https://travel.com.vn/Images/LastMinute/lm_190913095923_067292.jpg"
                             alt="Alternate Text"/>
                    </div>
                    <div class="card-image-overlay m-auto">
                        <span class="card-detail-badge">22,000.000đ</span>
                        <span class="card-detail-badge khuyenmai-giamgia"><Strike>2,000,000đ</Strike></span>
                    </div>
                    <div class="card-body text-center">
                        <div class="ad-title m-auto">
                            <h5>Đà Lạt</h5>
                        </div>
                        <a class="ad-btn" href="{{route('chitiettour')}}">Xem</a>
                    </div>
                </div>
            </div>

        </div>
    </div>

    {{-- Điểm Đến Yêu Thích --}}
    <section class="our-webcoderskull padding-lg">
        <h2 class="text-center tour-gio-vang">Điểm Đến Yêu Thích Của Bạn</h2>
        <div class="container">
            <ul class="row">
                <li class="col-12 col-md-6 col-lg-3">
                    <div class="cnt-block equal-hight">
                        <figure>
                            <img
                                src="https://dulichviet.com.vn/images/bandidau/images/NOI-DIA/du-lich-trong-nuoc-hanh-trinh-di-san-mien-trung-2017.png"
                                class="img-responsive" alt="">
                        </figure>

                        <ul class="follow-us clearfix">
                            <li><a href="{{route('diemden')}}"><h3>Nguyễn Cao Tài</h3></a></li>

                        </ul>
                    </div>
                </li>
                <li class="col-12 col-md-6 col-lg-3">
                    <div class="cnt-block equal-hight">
                        <figure>
                            <img
                                src="https://dulichviet.com.vn/images/bandidau/images/NOI-DIA/du-lich-trong-nuoc-hanh-trinh-di-san-mien-trung-2017.png"
                                class="img-responsive" alt=""></figure>

                        <ul class="follow-us clearfix">
                            <li><a href="{{route('diemden')}}"><h3>Hội An</h3></a></li>

                        </ul>
                    </div>
                </li>
                <li class="col-12 col-md-6 col-lg-3">
                    <div class="cnt-block equal-hight">
                        <figure><img
                                src="https://dulichviet.com.vn/images/bandidau/images/NOI-DIA/tour-trong-nuoc-tour-miet-vuon-mien-tay_du-lich-viet.png"
                                class="img-responsive" alt=""></figure>

                        <ul class="follow-us clearfix">
                            <li><a href="{{route('diemden')}}"><h3>Hội An</h3></a></li>

                        </ul>
                    </div>
                </li>
                <li class="col-12 col-md-6 col-lg-3">
                    <div class="cnt-block equal-hight">
                        <figure><img
                                src="https://dulichviet.com.vn/images/bandidau/images/NOI-DIA/tour-trong-nuoc-tour-miet-vuon-mien-tay_du-lich-viet.png"
                                class="img-responsive" alt=""></figure>

                        <ul class="follow-us clearfix">
                            <li><a href="{{route('diemden')}}"><h3>Hội An</h3></a></li>

                        </ul>
                    </div>
                </li>
            </ul>
        </div>
    </section>

    {{-- our carosel --}}


    <div class="container">
        <h2 class="text-center tour-gio-vang">Đối Tác Của Chúng Tôi</h2>
        <section class="customer-logos-ourcarosel slider">
            <div class="slide"><img src="{{asset('img/logo_doitac/1.jpg')}}">
            </div>
            <div class="slide"><img src="{{asset('img/logo_doitac/2.jpg')}}"></div>
            <div class="slide"><img src="{{asset('img/logo_doitac/3.png')}}"></div>
            <div class="slide"><img
                    src="{{asset('img/logo_doitac/4.png')}}"></div>
            <div class="slide"><img src="{{asset('img/logo_doitac/5.png')}}"></div>
            <div class="slide"><img
                    src="{{asset('img/logo_doitac/6.png')}}"></div>
                <div class="slide"><img src="{{asset('img/logo_doitac/7.jpg')}}"></div>
        </section>

    </div>
    <script type="text/javascript" src="{{asset('js/datetime.js')}}"></script>
@endsection
@section('js')
    <script type="text/javascript" src="{{asset('js/ourcarosel.js')}}"></script>
@endsection

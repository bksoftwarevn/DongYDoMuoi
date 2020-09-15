<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- ============= Title  ============= -->
    <title id="title-page"><%=request.getAttribute("title")%></title>
    <!-- ============= Meta Sale  ============= -->
    <meta name="description" content="<%=request.getAttribute("description")%>" class="main-description-page">
    <meta itemprop="image" content="<%=request.getAttribute("image")%>" class="class-image-page">
    <meta property="og:url" itemprop="url" content="<%=request.getAttribute("url")%>" id="facebook-url-page"/>
    <meta property="og:type" content="website">
    <meta property="og:title" content="<%=request.getAttribute("title")%>" class="main-title-page"/>
    <meta property="og:description" content="<%=request.getAttribute("description")%>" class="main-description-page"/>
    <meta property="og:image" content="<%=request.getAttribute("image")%>" class="main-image-page"/>
    <!-- ============= End Meta Sale  ============= -->
    <!-- ============= Google Font============= -->
    <link href="plugins/fonts/fonts.css" rel="stylesheet">
    <link rel="icon" href="https://cdn.bksoftwarevn.com/resources/micro-upload//dong-y/logo/logo-dong-y.png" type="image/x-icon">
    <!-- ============= Bootstrap Css ============= -->
    <%--        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"--%>
    <%--              integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">--%>
    <link rel="stylesheet" href="plugins/bootstrap/bootstrap.min.css">
    <!-- ============= Library Css============= -->
    <link rel="stylesheet" href="plugins/slick-1.8.1/slick.css">
    <link rel="stylesheet" href="plugins/slick-1.8.1/slick-theme.css">
    <!-- ============= Global Css ============= -->
    <link rel="stylesheet" href="css/global.css">
    <!-- ============= Jquery ============= -->
    <script src="plugins/jquery/jquery-3.5.1.slim.min.js"></script>
    <script src="plugins/jquery/jquery.min.js"></script>
    <!-- ============= Font Awesome ============= -->
    <script src="plugins/fontawesome/fontawesome.js" crossorigin="anonymous"></script>
    <!-- ============= Bootstrap 4 Js ============= -->
    <script src="plugins/bootstrap/popper.min.js"></script>
    <script src="plugins/bootstrap/bootstrap.min.js"></script>
    <link rel="stylesheet" href="plugins/bootstrap-notify/bootstrap-notify.min.css"/>
    <script src="plugins/bootstrap-notify.min.js"></script>
    <script src="plugins/bootstrap-notify/bootstrap-notify.min.js"></script>
    <!-- ============= Library Js  ============= -->
    <script src="plugins/slick-1.8.1/slick.min.js"></script>
    <link rel="stylesheet" href="plugins/animate/animate.min.css" type="text/css"/>
    <!-- ============= Global Js ============= -->
    <script src="js/app_const.js"></script>
    <script src="js/global.js"></script>
    <script src="ajax/ajax_main.js"></script>
    <script src="https://cdn.bksoftwarevn.com/resources/library_js/ajax_micro_service/ajax_global.js"></script>
    <script src="https://cdn.bksoftwarevn.com/resources/library_js/ajax_micro_service/ajax_infor_system_service.js"></script>
    <script src="https://cdn.bksoftwarevn.com/resources/library_js/ajax_micro_service/ajax_product_service.js"></script>
    <script src="https://cdn.bksoftwarevn.com/resources/library_js/ajax_micro_service/ajax_news_service.js"></script>
    <script src="ajax/pages/page_base.js"></script>
    <!-- ============= Import Custom Sale Head ============= -->
    <meta property="fb:app_id" content="1239278239786334"/>
    <meta property="fb:admins" content="100013406503167"/>
</head>
<body>
<tiles:insertAttribute name="header"/>
<main class="home">
    <section class="hero d-none d-md-block">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="hero-wrapper row">
                        <div class="hero__category col-md-4 col-lg-3" id="hero__category">
                            <ul class="hero__category-list">
                                <div class="nav-category">
                                    <i class="fas fa-bars"></i>
                                    <span>Danh mục sản phẩm</span>
                                </div>
                                <li class="li-1">
                                    <a href=""><img src="file/icon/icon-1.png" alt=""><span>Dược liệu
                                                quý</span></a>
                                    <ul>
                                        <li>
                                            <a href="">Công tắc ổ cắm</a>
                                            <ul class="class-n">
                                                <li><a href="">Đèn led </a>
                                                    <ul class="class-n">
                                                        <li><a href="">Máng Đèn Tán Quang Và Tán Xạ LED Thanh </a>
                                                            <ul class="class-n">
                                                                <li><a href="">Máng Đèn Tán Quang Và Tán Xạ LED
                                                                    Thanh </a></li>
                                                                <li><a href="">Đèn led </a></li>
                                                            </ul>
                                                        </li>
                                                        <li><a href="">Đèn led </a></li>
                                                    </ul>
                                                </li>
                                                <li><a href="">Máng Đèn Tán Quang Và Tán Xạ LED Thanh </a></li>
                                                <li><a href="">Đèn led </a></li>
                                                <li><a href="">Máng Đèn Tán Quang Và Tán Xạ LED Thanh </a></li>

                                            </ul>
                                        </li>

                                    </ul>
                                </li>
                                <li class="li-1">
                                    <a href=""><img src="file/icon/icon-1.png" alt=""><span>Dược liệu
                                                quý</span></a>
                                    <ul>
                                        <li><a href=""><i class="fas fa-angle-double-right"></i>Công tắc ổ cắm</a>
                                        </li>
                                    </ul>
                                </li>
                                <li class="li-1">
                                    <a href=""><img src="file/icon/icon-1.png" alt=""><span>Dược liệu
                                                quý</span></a>

                                    <ul>
                                        <li><a href=""><i class="fas fa-angle-double-right"></i>Công tắc ổ cắm</a>
                                        </li>
                                    </ul>
                                </li>
                                <li class="li-1">
                                    <a href=""><img src="file/icon/icon-1.png" alt=""><span>Dược liệu
                                                quý</span></a>

                                    <ul>
                                        <li><a href=""><i class="fas fa-angle-double-right"></i>Công tắc ổ cắm</a>
                                        </li>
                                    </ul>
                                </li>
                            </ul>
                        </div>
                        <div class="hero__banner col-md-8 col-lg-9 pl-0">
                            <div class="banner">
                                <a href="" class="slick-item">
                                    <img src="file/dynamic/home/trung-tam-duoc-lieu-vietfarm-slide1-825x350.jpg"
                                         alt="">
                                </a>
                                <a href="" class="slick-item">
                                    <img src="file/dynamic/home/trung-tam-duoc-lieu-vietfarm-slide1-825x350.jpg"
                                         alt="">
                                </a>
                                <a href="" class="slick-item">
                                    <img src="file/dynamic/home/trung-tam-duoc-lieu-vietfarm-slide1-825x350.jpg"
                                         alt="">
                                </a>
                                <a href="" class="slick-item">
                                    <img src="file/dynamic/home/trung-tam-duoc-lieu-vietfarm-slide1-825x350.jpg"
                                         alt="">
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <tiles:insertAttribute name="body"/>
</main>
<tiles:insertAttribute name="footer"/>

<!-- ============= Import Custom Plugin Body ============= -->
<!-- Load Facebook SDK for JavaScript -->
<div id="fb-root"></div>
<script async defer crossorigin="anonymous" src="https://connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v8.0&appId=1239278239786334&autoLogAppEvents=1" nonce="mTaePOGM"></script>
<script>
    window.fbAsyncInit = function() {
        FB.init({
            xfbml            : true,
            version          : 'v8.0'
        });
    };

    (function(d, s, id) {
        var js, fjs = d.getElementsByTagName(s)[0];
        if (d.getElementById(id)) return;
        js = d.createElement(s); js.id = id;
        js.src = 'https://connect.facebook.net/vi_VN/sdk/xfbml.customerchat.js';
        fjs.parentNode.insertBefore(js, fjs);
    }(document, 'script', 'facebook-jssdk'));</script>

<!-- Your Chat Plugin code -->
<div class="fb-customerchat"
     attribution=setup_tool
     page_id="2114139642210452"
     logged_in_greeting="Hi! How can we help you?"
     logged_out_greeting="Hi! How can we help you?">
</div>
</body>
</html>

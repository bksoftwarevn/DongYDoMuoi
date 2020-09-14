<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <!-- ============= Title  ============= -->
        <title id="title-page">THIẾT BỊ ĐIỆN AVHH</title>
        <!-- ============= Google Font============= -->
        <link href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&display=swap"
                rel="stylesheet">
        <link rel="icon" href="https://cdn.bksoftwarevn.com/resources/micro-upload/avhh/logo/logo-avhh.png" type="image/x-icon">
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
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
                integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
                crossorigin="anonymous"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <!-- ============= Font Awesome ============= -->
        <script src="https://kit.fontawesome.com/63f35fe35b.js" crossorigin="anonymous"></script>
        <!-- ============= Bootstrap 4 Js ============= -->
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"
                integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN"
                crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"
                integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV"
                crossorigin="anonymous"></script>
        <link rel="stylesheet" href="plugins/bootstrap-notify/bootstrap-notify.min.css"/>
        <script src="plugins/bootstrap-notify.min.js"></script>
        <script src="plugins/bootstrap-notify/bootstrap-notify.min.js"></script>
        <!-- ============= Library Js  ============= -->
        <script src="plugins/slick-1.8.1/slick.min.js"></script>
        <script src="plugins/particles/particles.js"></script>
        <script src="plugins/pagination/pagination.js"></script>
        <link rel="stylesheet" href="plugins/animate/animate.min.css" type="text/css"/>
        <!-- ============= Global Js ============= -->
        <script src="js/app_const.js"></script>
        <script src="js/global.js"></script>
        <script src="ajax/ajax_main.js"></script>
        <script src="https://cdn.bksoftwarevn.com/resources/library_js/ajax_micro_service/ajax_global.js"></script>
        <script src="https://cdn.bksoftwarevn.com/resources/library_js/ajax_micro_service/ajax_infor_system_service.js"></script>
        <script src="https://cdn.bksoftwarevn.com/resources/library_js/ajax_micro_service/ajax_product_service.js"></script>
        <script src="https://cdn.bksoftwarevn.com/resources/library_js/ajax_micro_service/ajax_news_service.js"></script>
        <script src="ajax/page/ajax_page_base.js"></script>
    </head>
    <body>
    <tiles:insertAttribute name="header"/>
    <main class="home">
        <section class="hero d-none d-md-block" id="nav-hero">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <div class="hero-wrapper row">
                            <div class="hero__category col-md-4 col-lg-3" id="hero__category">
                                <ul class="hero__category-list" id="nav-category">
                                    <li class="d-none li-1" id="li-nav-temp">
                                        <a href="" class="nav-href" data-id="">
                                            <span class="nav-text"></span>
<%--                                            <i class="fas fa-angle-double-right"></i>--%>
                                        </a>
                                        <ul class="d-none nav1" data-id="">
                                            <li data-id="">
                                                <a href="" class="nav1-href"></a>
                                                <ul class="class-n">
                                                    <li data-id="">
                                                        <a href=""></a>
                                                    </li>
                                                </ul>
                                            </li>
                                        </ul>
                                    </li>
                                </ul>
                            </div>
                            <tiles:insertAttribute name="banner"/>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <tiles:insertAttribute name="body"/>
    </main>
    <tiles:insertAttribute name="footer"/>
    </body>
</html>

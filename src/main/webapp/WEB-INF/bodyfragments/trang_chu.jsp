<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!-- ============= Custom Css ============= -->
<link rel="stylesheet" href="css/trang_chu.css">
<script src="js/home.js"></script>
<script src="https://cdn.bksoftwarevn.com/resources/library_js/ajax_micro_service/ajax_marketing_service.js"></script>
<script src="ajax/page/ajax_page_trang_chu.js"></script>
<!-- Quảng cáo -->
<section class="popup-ad d-none">
    <div class="popup-wrapper" id="set-popup">
        <a href="trang-chu">
            <img src="" alt="">
            <div class="close-popup">
                [x]
            </div>
        </a>
    </div>
</section>
<section class="catalog">
    <div class="container">
        <div class="row">
            <div class="col-12 col-md-4 mt-4">
                <a href="" id="img-gioi-thieu-1">
                    <img src="" alt="">
                </a>
            </div>
            <div class="col-12 col-md-4 mt-4">
                <a href="" id="img-gioi-thieu-2">
                    <img src="" alt="">
                </a>
            </div>
            <div class="col-12 col-md-4 mt-4">
                <a href="" id="img-gioi-thieu-3">
                    <img src="" alt="">
                </a>
            </div>
        </div>
    </div>
</section>
<section class="h-product">
    <div class="container">
        <div class="row">
            <div class="col-12">
                <h2 class="text-center section-title">Sản phẩm của chúng tôi</h2>
            </div>
        </div>
    </div>
    <div class="container product-wrapper" id="list-product-temp" data-product-type="">
        <div class="row">
            <div class="col-12 mb-5">
                <div class="col-inner">
                    <div class="inner-item">
                        <h3><a href="" class="lp-product-type-name lp-product-type-link"></a></h3>
                        <div class="see-more">
                            <a href="" class="lp-product-type-link">Xem thêm</a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-6 col-md-4 col-lg-3 mb-2 mb-md-5 product-temp d-none" id="product-temp">
                <a href="" class="product product-link">
                    <div class="product-inner">
                        <div class="product__img">
                            <img src="" alt="" class="product-img">
                            <div class="product__promo product-promo">
                                <div class="promo-sale"></div>
                                <div class="promo-gift" data-placement="bottom" data-toggle="tooltip"></div>
                            </div>
                        </div>
                        <div class="product__text">
                                    <span class="d-block text-center product-name"></span>
                            <div class="product-price text-center">
                                <del></del>
                                <span></span>
                            </div>
                            <div class="bt-add-cart text-center">
                                <button type="button" class="btn btn-primary btn-add-cart">Thêm vào giỏ</button>
                            </div>
                        </div>
                    </div>
                </a>
            </div>
        </div>
    </div>
</section>
<section class="h-construction">
    <div class="container">
        <div class="row">
            <div class="col-12">
                <h2 class="text-center section-title">Công trình của chúng tôi</h2>
            </div>
        </div>
    </div>
    <div class="container">
        <div class="row">
            <div class="col-12">
                <div class="construction-carousel">
                    <a href="" class="construc-item construction-href" id="construction-carousel-temp">
                        <div class="construc-item__img">
                            <img src="" alt=""  class="construction-img">
                        </div>
                        <div class="construc-text construction-text">
                            <h3 class="text-center"></h3>
                            <p class="text-justify text-md-center"></p>
                        </div>
                    </a>
                </div>
            </div>
        </div>
    </div>
</section>
<section class="why-choose">
    <div class="container">
        <div class="row">
            <div class="col-12">
                <h2 class="text-center section-title">Vì sao nên chọn sản phẩm của chúng tôi</h2>
            </div>
        </div>
    </div>
    <div class="container mt-5">
        <div class="row">
            <div class="col-12 col-md-6 col-lg-4">
                <div class="why-item right" id="ly-do-1">
                    <div class="why-item_text">
                        <h3></h3>
                        <p></p>
                    </div>
                    <div class="why-item_img">
                        <img src="">
                    </div>
                </div>
                <div class="why-item right" id="ly-do-2">
                    <div class="why-item_text">
                        <h3></h3>
                        <p></p>
                    </div>
                    <div class="why-item_img">
                        <img src="">
                    </div>
                </div>
                <div class="why-item right" id="ly-do-3">
                    <div class="why-item_text">
                        <h3></h3>
                        <p></p>
                    </div>
                    <div class="why-item_img">
                        <img src="">
                    </div>
                </div>
            </div>
            <div class="col-12 col-md-6 col-lg-4 d-md-none d-lg-block">
                <div class="why-item-img-center">
                    <img src="" alt="Vì sao nên chọn sản phẩm của chúng tôi" id="ly-do-img-banner">
                </div>
            </div>
            <div class="col-12 col-md-6 col-lg-4">
                <div class="why-item left" id="ly-do-4">
                    <div class="why-item_text">
                        <h3></h3>
                        <p></p>
                    </div>
                    <div class="why-item_img">
                        <img src="">
                    </div>
                </div>
                <div class="why-item left" id="ly-do-5">
                    <div class="why-item_text">
                        <h3></h3>
                        <p></p>
                    </div>
                    <div class="why-item_img">
                        <img src="">
                    </div>
                </div>
                <div class="why-item left" id="ly-do-6">
                    <div class="why-item_text">
                        <h3></h3>
                        <p></p>
                    </div>
                    <div class="why-item_img">
                        <img src="">
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<section class="partner">
    <div class="container">
        <div class="row">
            <div class="col-12">
                <h2 class="text-center section-title">Đối tác</h2>
            </div>
        </div>
    </div>
    <div class="container">
        <div class="partner-carousel">
            <div class="partner-item" id="partner-carousel-temp">
                <img src="" alt="">
            </div>
        </div>
    </div>
</section>
<section class="quote d-none d-lg-block">
    <div class="quote-bg" id="quote-bg">
    </div>
    <div class="quote-shadow">
    </div>
    <div id="quote"></div>
</section>
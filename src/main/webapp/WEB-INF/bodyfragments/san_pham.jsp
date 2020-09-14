<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<link rel="stylesheet" href="plugins/lightbox-plus/css/lightbox.min.css">
<link rel="stylesheet" href="css/chi_tiet_mot_san_pham.css">
<script src="plugins/lightbox-plus/lightbox.min.js"></script>
<script src="plugins/inputSpinnerBootstrap/bootstrap-input-spinner.js"></script>
<script src="js/chi_tiet_mot_san_pham.js"></script>
<script src="ajax/page/ajax_page_san_pham.js"></script>
<div class="d-none" id="page-id" data-page-id="<%=request.getParameter("id")%>"></div>
<section class="p-breadcrumb">
    <div class="container">
        <div class="row">
            <div class="col-12">
                <nav aria-label="breadcrumb ">
                    <ol class="breadcrumb d-flex justify-content-center justify-content-md-start align-items-center">
                        <li class="breadcrumb-item"><a href="trang-chu">Trang chủ</a></li>
                        <li class="breadcrumb-item active" aria-current="page">Sản phẩm</li>
                    </ol>
                </nav>
            </div>
        </div>
    </div>
</section>
<section class="product-detail">
    <div class="container">
        <div class="row">
            <div class="col-12 col-md-5">
                <a class="product-detail__img href-img-product" data-lightbox="image-1" href="">
                    <img src="" class="img-product" alt="">
                    <div class="p-promo" id="pro-infor-product">
                        <div class="promo-sale"></div>
                        <div class="promo-gift" data-placement="bottom" data-toggle="tooltip"></div>
                    </div>
                </a>
            </div>
            <div class="col-12 col-md-7">
                <div class="product-detail_decs">
                    <h1 class="pdc-name" id="name-infor-product"></h1>
                    <p class="pdc-price" id="cost-infor-product">
                        <del></del>
                        <span></span>
                    </p>
                    <p class="pdc-status">
                        <span>Tình trạng:</span>
                        <span id="status-infor-product"></span>
                    </p>
                    <p class="pdc-contact">
                        <span>Liên hệ được giá tốt:</span>
                        <a href="" class="link-phone-comany text-phone-company"></a>
                    </p>
                    <p class="pdc-parameter">Thông số kĩ thuật:</p>
                    <table class="table table-striped pdc-parameter-detail">
                        <tbody id="properties-infor-product">
                            <tr>
                                <th></th>
                                <td></td>
                            </tr>
                        </tbody>
                    </table>
                    <div class="pdc-inbut">
                        <input type="number" value="0" min="1" max="" step="1" id="input-quantity"/>
                        <button class="brn btn-danger buynow" onclick="addToCart()">Mua ngay</button>
                    </div>
                    <p class="pdc-code">Mã: <span id="model-infor-product"></span></p>
                    <div class="pdc-sharefb">

                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<section class="product-decs">
    <div class="container">
        <div class="row">
            <div class="col-12 pd-title">
                <span>Mô tả</span>
            </div>
            <div class="col-12">
                <a class="btn btn-primary btn-lg" href="" id="file-catalog" target="_blank">
                    <i class="fas fa-download"></i>&nbsp;DOWNLOAD CATALOGUE
                </a>&nbsp;
                <a class="btn btn-danger btn-lg bt-bg" href="lien-he">
                    <i class="fas fa-envelope"></i>&nbsp;YÊU CẦU BÁO GIÁ
                </a>
            </div>
            <div class="col-12 pd-content mt-10" id="introduction-infor-product">
            </div>
        </div>
    </div>
</section>
<section class="product-related">
    <div class="container">
        <div class="row">
            <div class="col-12">
                <p class="product-related__title">Sản phẩm liên quan</p>
            </div>
            <div class="col-12">
                <div class="product-related-carousel" id="list-product-related">
                    <div class="prc-item d-none" id="product-temp">
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
        </div>
    </div>
</section>
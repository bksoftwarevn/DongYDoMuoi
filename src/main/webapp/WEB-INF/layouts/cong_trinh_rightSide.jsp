<%--
  Created by IntelliJ IDEA.
  User: viethoang
  Date: 9/8/2020
  Time: 2:10 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<script src="js/utils.js"></script>
<link rel="stylesheet" href="css/common_category.css">
<script src="ajax/pages/page_common_category.js"></script>

<section id="tinTuc">
    <div class="container">
        <div class="tinTuc__title row">
            <div class="col-12">
                <h2 class="text-uppercase text-center ">Chuyên mục: Công trình</h2>
            </div>
        </div>
        <div class="row">

            <tiles:insertAttribute name="view-tt"/>

            <!-- right side -->
            <div class="col-12 col-md-4 col-lg-3 mt-5 mt-md-5">
                <div class="row">
                    <!-- danh muc -->
                    <div class="col-12">
                        <div class="tinTuc__danhMuc d-none">
                            <div class="tinTuc__danhMuc--title">
                                <h3 class="text-uppercase text-left">Dự toán</h3>
<%--                                <ul class="tinTuc__danhMuc--firstLevelUl d-none" >--%>
                            </div>
                            <div class="tinTuc__danhMuc--listDm" id="listDm">

                                <!-- ===hiden template=== -->
                                <ul class="tinTuc__danhMuc--firstLevelUl d-none" id='hiddenElementDm'>
                                    <li class="tinTuc__danhMuc--firstLevelLi ">
                                        <div class="d-flex justify-content-between">
                                            <a href="#" class="tinTuc__danhMuc--link">Công tắc ổ cắm</a>

                                        </div>


                                    </li>

                                </ul>
<%--                                <ul class="tinTuc__danhMuc--firstLevelUl" >--%>
<%--                                    <li class="tinTuc__danhMuc--firstLevelLi ">--%>
<%--                                        <div class="d-flex justify-content-between">--%>
<%--                                            <i class="fas fa-file-pdf text-danger"></i> <a href="https://thietbidienhanoi.vn/ajax/export_download.php?content_type=product-list&storeCatId=13&file_type=pdf" target="_blank" class="tinTuc__danhMuc--link">Báo giá</a>--%>
<%--                                        </div>--%>
<%--                                    </li>--%>
<%--                                    <li class="tinTuc__danhMuc--firstLevelLi ">--%>
<%--                                        <div class="d-flex justify-content-between">--%>
<%--                                            <i class="fas fa-file-excel text-success"></i> <a href="https://drive.google.com/uc?authuser=4&id=1uQ8ZVqX5TSMehsd2Zsfrh9CpTsBCb_9Y&export=download" target="_blank" class="tinTuc__danhMuc--link">Hoạch toán</a>--%>
<%--                                        </div>--%>
<%--                                    </li>--%>
<%--                                </ul>--%>
                                <!-- === end hiden template=== -->
                            </div>
                        </div>
                    </div>
                    <!-- end danh mục -->

                    <!-- sản phẩm nổi bật -->

                    <div class="col-12 tinTuc__spnb mt-5">
                        <div class="tinTuc__spnb--title">
                            <h3 class="text-uppercase text-left">Sản phẩm nổi bật</h3>
                        </div>
                        <div class="tinTuc__spnb--list">
                            <ul class="tinTuc__spnb--ul" id='list-product'>
                                <li class="tinTuc__spnb--li d-none" id="hidden-product">
                                    <a class="tinTuc__spnb--link" href="">
                                                <span class="tinTuc__spnb--imgProduct">
                                                    <img class="img-fluid"
                                                         src="https://thietbidienpanasonic.com/wp-content/uploads/2017/06/thiet-bi-cam-ung-panasonic-wtkg231-175x175.jpg"
                                                         alt="">
                                                </span>

                                        <span>
                                                    <div class="tinTuc__spnb--productName"> Đèn cảm biến hồng ngoại
                                                    </div>
                                                    <div>
                                                        <span class="tinTuc__spnb--oldPrice"><del>2.540.000
                                                                <u>đ</u></del>
                                                        </span>
                                                        <span class="tinTuc__spnb--newPrice">1.778.000<u>đ</u></span>
                                                    </div>
                                                </span>
                                    </a>

                                </li>


                            </ul>
                        </div>
                    </div>

                    <!-- end sản phẩm nổi bật -->

                    <!-- bai viet gan day -->
                    <div class="col-12 tinTuc__bvgd">
                        <div class="tinTuc__bvgd--title">
                            <h3 class="text-uppercase text-left">Bài viết gần đây</h3>
                        </div>
                        <div class="tinTuc__bvgd--list">
                            <ul class="tinTuc__bvgd--ul" id="list-bvgd">
                                <!--=== hidden newsest article=== -->
                                <li class="tinTuc__bvgd--li d-none" id='hidden-bvgd'>
                                    <a class="tinTuc__bvgd--link" href="">
                                                <span class="tinTuc__bvgd--imgProduct">
                                                    <img src="https://thietbidienpanasonic.com/wp-content/uploads/2017/06/thiet-bi-cam-ung-panasonic-wtkg231-175x175.jpg"
                                                         alt="">
                                                    <div class="tinTuc__bvgd--time">
                                                        <div class="tinTuc__bvgd--date">28</div>
                                                        <div class="tinTuc__bvgd--month">Th8</div>
                                                    </div>
                                                </span>

                                        <span>
                                                    <div class="tinTuc__bvgd--productName"> Đại lý cung cấp bếp điện từ
                                                        Panasonic tp.HCM
                                                    </div>
                                                    <div class="tinTuc__bvgd--commentCount">
                                                        <p>4 Comments</p>
                                                    </div>
                                                </span>
                                    </a>

                                </li>
                                <!--===end hidden newsest article=== -->

                            </ul>
                        </div>
                    </div>
                    <!-- end bai viet gan day  -->

                    <!-- nhan bao gia -->
                    <a class="col-12 tinTuc__nbg" href="lien-he">
                        <div class="tinTuc__nbg--title">
                            <h3 class="text-uppercase text-left">Nhận báo giá</h3>
                        </div>
                        <div class="tinTuc__nbg--img">
                            <img src="https://thietbidienpanasonic.com/wp-content/uploads/2017/06/bao-gia-thiet-bi-dien-panasonic.jpg"
                                 alt="">
                        </div>
                    </a>
                    <!-- end nhan bao gia -->
                </div>

            </div>
            <!-- end right side -->
        </div>

    </div>
</section>




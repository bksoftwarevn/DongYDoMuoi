<%--
  Created by IntelliJ IDEA.
  User: viethoang
  Date: 9/7/2020
  Time: 8:14 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<script src="https://cdn.bksoftwarevn.com/resources/library_js/ajax_micro_service/ajax_news_service.js"></script>
<div class="d-none" id="page-id" data-page-id="<%=request.getParameter("id")%>"></div>
<link rel="stylesheet" href="css/chi_tiet_gioi_thieu.css">
<script src="js/lienhe.js"></script>
<script src="js/utils.js"></script>
<script src="ajax/pages/page_chi_tiet_gioi_thieu.js"></script>


<%--<link rel="stylesheet" href="css/common_category.css">--%>

<%--<script src="ajax/pages/page_common_category.js"></script>--%>

<section id="tinTuc">
    <div class="container">
        <div class="tinTuc__title row">
<%--            <div class="col-12 text-center">--%>
<%--                <h3 class="text-center" style="font-size: 12px; color: #007bff;">Giới thiệu</h3>--%>
<%--            </div>--%>
            <div class="col-12">
                <h2 class="text-uppercase text-center ">Chuyên mục: Tin tức</h2>
            </div>
        </div>
        <div class="row">
            <div class="col-12 tinTuc__element mt-5 mt-md-5">
                <!-- hidden element -->
                <div class="row d-none" id="hidden-chiTietTinTuc">
                    <div class="col-12">
                        <div class="tinTuc__element--img">
                            <img class="img-fluid"
                                 src="https://thietbidienpanasonic.com/wp-content/uploads/2018/08/bep-dien-tu-panasonic-chat-luong-1024x555.jpg"
                                 alt="">
                        </div>
                    </div>
                    <div class="col-12 d-flex justify-content-start mt-3">
                        <p class="tinTuc__title--autho text-left text-uppercase align-text-bottom font-weight-bold">được đăng
                            vào <a href="">28 tháng Tám</a> bởi Panasonic Việt Nam</p>

                    </div>
                    <div class="col-12">
                        <div class="tinTuc__previewTinTuc font-weight-bold">

                        </div>
                    </div>
                    <div class="col-12">
                        <div class="tinTuc__contentTinTuc">

                        </div>
                    </div>

                </div>
                <!--end hidden element -->

<%--                <div class="row">--%>
<%--                    <div class="col-12 tinTuc__socialContact mt-5 mt-md-5">--%>
<%--                        <ul class="d-flex justify-content-center">--%>
<%--                            <li><a href=""><i class="fab fa-facebook"></i></a></li>--%>
<%--                            <li><a href=""><i class="fab fa-twitter"></i></a></li>--%>
<%--                            <li><a href=""><i class="fab fa-google-plus"></i></a></li>--%>
<%--                            <li><a href=""><i class="fab fa-linkedin-in"></i></a></li>--%>
<%--                        </ul>--%>
<%--                    </div>--%>
<%--                </div>--%>
            </div>
        </div>
        </div>
</section>

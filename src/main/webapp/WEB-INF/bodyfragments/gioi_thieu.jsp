<%--
  Created by IntelliJ IDEA.
  User: viethoang
  Date: 9/8/2020
  Time: 2:10 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<script src="https://cdn.bksoftwarevn.com/resources/library_js/ajax_micro_service/ajax_news_service.js"></script>
<%--<link rel="stylesheet" href="css/common_category.css">--%>
<%--<script src="ajax/pages/page_common_category.js"></script>--%>
<link rel="stylesheet" href="css/gioi_thieu.css">
<script src="js/lienhe.js"></script>
<script src="ajax/pages/page_gioi_thieu.js"></script>
<script src="js/utils.js"></script>

<section id="tinTuc">
    <div class="container">
        <div class="tinTuc__title row">
            <div class="col-12">
                <h2 class="text-uppercase text-center ">Về công ty Thiết bị điện AVhh</h2>
            </div>
        </div>
        <div class="row">
            <div class="col-12" id="list-tin-tuc">
                <!-- ===hidden tintuc element=== -->
                <a href="#" class="tinTuc__element row d-none mt-3 mt-md-5" id="tinTuc__element">
                    <div class="col-5">
                        <div class="tinTuc__element--img">
                            <img src="https://thietbidienpanasonic.com/wp-content/uploads/2018/08/bep-dien-tu-panasonic-chat-luong-300x163.jpg"
                                 alt="">
                            <div
                                    class="tinTuc__element--time d-flex flex-column justify-content-center align-items-center">
                                <div class="tinTuc__element--date">28</div>
                                <div class="tinTuc__element--month">Th8</div>
                            </div>
                        </div>
                    </div>
                    <div class="col-7">
                        <div class="tinTuc__element--info">
                            <h4 class="tinTuc__element--name text-left">Đại lý cung
                                cấp bếp điện
                                từ Panasonic tp.HCM</h4>
                            <p class="tinTuc__element--description">Hiện nay, với nhu cầu lắp đặt, sử dụng bếp
                                điện từ Panasonic ngày càng
                                nhiều, đặc biệt ở các thành phố lớn như Hà Nội, tp.HCM. Dòng sản phẩm bếp điện
                                từ Panasonic có nhiều ưu điểm nổi bật; chất lượng tốt, thiết kế tinh tế, độ bền
                                cao, giá thành phải chăng..</p>
<%--                            <p class="tinTuc__element--commentCount  text-uppercase">4 comments</p>--%>
                        </div>
                    </div>
                </a>
                <!-- ===end hidden tintuc element=== -->

            </div>

        </div>

    </div>
</section>

<div class="modal" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
     aria-hidden="true">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title">Yêu cầu báo giá</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <div class="row">
                    <div class="col-12 col-md-6">
                        <div class="col-iinner">
                            <p class="first-p">Vui lòng
                                liên hệ trực tiếp để có giá tốt nhất và biết được
                                tình trạng hàng trong kho</p>
                            <p class="request-price-item" id='name-phone-admin'>Đinh Văn Ninh (Mr):
                                <span><strong><a href="tel:0981.044.566">0981.044.566</a></strong></span></p>
                            <p class="request-price-item" id='email-admin'>Email:&nbsp;<a
                                    href="mailto:Panasonicvietnam.com@gmail.com">Panasonicvietnam.com@gmail.com</a>
                            </p>
                        </div>
                    </div>
                    <div class="col-12 col-md-6">
                        <div class="col-iiner">
                            <p class="first-p">Quý
                                khách hàng lấy số lượng lớn cho công trình vui lòng liên hệ chúng tôi để có chiết
                                khấu tốt nhất</p>
                            <div>
                                <form>
                                    <p><label> Họ tên (*)<br>
                                        <span><input type="text" id='input-name-customer'></span> </label></p>
                                    <p><label> Email (*)<br>
                                        <span><input type="email" id='input-email-customer'></span> </label></p>
                                    <p><label> Số điện thoại<br>
                                        <span><input type="text" id='input-phone-customer'></span> </label></p>
                                    <p><label> Nội dung (*)<br>
                                        <span><textarea id='input-content-customer'></textarea></span> </label>
                                    </p>
                                    <p>
                                            <span>
                                                Upload file
                                            </span>
                                        <span><a type="button" class="btn btn-primary" id='btn-downloadFile'>Tải file mẫu</a></span>

                                        <span><input type="file" id='input-file-customer'></span></p>
                                    <p><input type="submit" value="Gửi đi" class="btn btn-primary btn-lg"
                                              id='btn-sendInfo'><span></span></p>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>


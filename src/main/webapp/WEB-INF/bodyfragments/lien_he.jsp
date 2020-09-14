<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<section id="sectionMap">
    <div class="container">
        <div class="row">
            <div class="col-12">
                <iframe id="map__iframe" src="https://www.google.com/maps/embed?pb=!1m14!1m12!1m3!1d14901.625010498467!2d105.84077260000001!3d20.9763463!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!5e0!3m2!1sen!2s!4v1599472014536!5m2!1sen!2s" width="100%" height="450" frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>
            </div>
        </div>
    </div>
</section>

<link rel="stylesheet" href="css/common_category.css">

<link rel="stylesheet" href="css/lien_he.css">
<script src="ajax/pages/page_lien_he.js"></script>
<script src="ajax/model/ajax_bk_cdn.js"></script>
<script src="js/lienhe.js"></script>

<section id="sectionLienHe" class="lienHe">
    <div class="container">
        <div class="row">
            <div class="col-12 col-md-6 lienHe__contact">
                <div class="lienHe__contact--box pl-3 pr-3 pl-md-0 pr-md-0">
                    <h3 class="lienHe__contact--title text-uppercase" id="name-company">
                        Công ty Thiết bị điện Hà Nội
                    </h3>
                    <ul class="lienHe__contact--listDetails">
                        <li id='address-company'><strong>Địa chỉ</strong>: Nguyễn Phong Sắc, Quận Cầu Giấy, Hà Nội</li>
                        <li id="phonenumber-company"><strong>Số điện thoại:</strong>
                            <a href="" class="link-phone-comany text-phone-company"></a> -
                            <a href="" class="link-phone-comany2 text-phone-company2"></a>
                        </li>
                        <li id='email-company'><strong>Email:</strong> Panasonicvietnam.com@gmail.com</li>
                        <li id='website-company'><strong>Website:</strong> https://thietbidienpanasonic.com</li>
                    </ul>
                </div>
<%--                <div style="width: 100%; " class="wrap-hr text-center">--%>
<%--                    <hr>--%>
<%--                </div>--%>


                <div class="lienHe__contact--listZalo" id="list-zalo">
                    <h3 class="lienHe__contact--title text-uppercase" id="">
                        Liên hệ trực tiếp với
                    </h3>
                    <ul class="">
                        <li class="d-flex">
                            <span>
                                <img src="icon/zalo.png" alt="" >
                            </span>
                            <span>
                                <h4>Nhân viên kinh doanh 01</h4>
                                <p><a href="tel: 0978960013">0978960013</a></p>
                            </span>
                        </li>
                        <li class="d-flex">
                            <span>
                                <img src="icon/zalo.png" alt="" >
                            </span>
                            <span>
                                <h4>Nhân viên kinh doanh 2</h4>
                                <p><a href="tel: 0978960013">0978960013</a></p>
                            </span>
                        </li>
                        <li class="d-flex">
                            <span>
                                <img src="icon/zalo.png" alt="" >
                            </span>
                            <span>
                                <h4>Nhân viên kinh doanh 3</h4>
                                <p><a href="tel: 0978960013">0978960013</a></p>
                            </span>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="col-12 col-md-6 lienHe__userInfo mt-3 mt-md-0">
                <div class="lienHe__userInfo--box pl-3 pr-3 pl-md-0 pr-md-0">
                    <h3 class="lienHe__userInfo--title text-uppercase">
                        Liên hệ để có báo giá tốt nhất
                    </h3>
                    <div class="lienHe__userInfo--name mt-3" >
                        <label><strong>Họ tên<span style="color: red;">(*)</span></strong></label>
                        <input type="text" class="form-control" id="name">
                        <div class="invalid-feedback">
                            Looks good!
                        </div>
                    </div>

                    <div class="lienHe__userInfo--email  mt-3" >
                        <label><strong>Email<span style="color: red;">(*)</span></strong></label>
                        <input type="text" class="form-control" id="email">
                        <div class="invalid-feedback">
                            Looks good!
                        </div>
                    </div>

                    <div class="lienHe__userInfo--phone  mt-3" >
                        <label ><strong>Số điện thoại<span style="color: red;">(*)</span></strong></label>
                        <input type="text" class="form-control" id="phone-number">
                        <div class="invalid-feedback">
                            Looks good!
                        </div>
                    </div>

                    <div class="lienHe__userInfo--content mt-3" >
                        <label for="input-content-customer"><strong>Nội dung liên hệ</strong></label>
                        <textarea name="" id="input-content-customer" cols="20" rows="12" class="form-control" ></textarea>
                    </div>

                    <div class="lienHe__userInfo--file mt-3" >
                        <span><button class="lienHe__userInfo--downloadFile btn btn-primary btn-sm" id="btn-downloadFile">Tải file mẫu</button></span>
                        <span><input type="file" id="input-file-customer"></span>
                    </div>

                    <div class="lienHe__userInfo--sentBtn mt-3 d-flex justify-content-center">
                        <span><button class="btn btn-primary btn-sm" id="btn-sendInfo">Gửi đi</button></span>
                    </div>
                </div>

            </div>
        </div>
    </div>
</section>
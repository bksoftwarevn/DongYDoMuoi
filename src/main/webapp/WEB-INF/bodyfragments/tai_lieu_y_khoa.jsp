<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<!-- ============= Custom Css ============= -->

<link rel="stylesheet" href="css/tuyen_dung.css">
<%--phan chung cho danh muc--%>
<script src=""></script>
<script src="ajax/pages/page_tuyen_dung.js"></script>
<%--<script src="js/lienhe.js"></script>--%>

<div class="col-12 col-md-8 col-lg-9 " >
    <div id="list-tin-tuc">
        <table class="table table-striped table-bordered tlyk mt-5">
            <thead class="tb__color-main">
            <tr class="text-center">
                <th scope="col">Stt</th>
                <th scope="col">Tên tài liệu</th>
                <th scope="col">Tải về</th>
            </tr>
            </thead>
            <tbody>
            <tr>
                <th scope="row" class="text-center">1</th>
                <td class="tlyk-name text-left"><a href="" target="_blank"><img src="icon/folder_page.png">Nghiên cứu ứng dụng xương nhân tạo, máu tuỷ xương tự thân điều trị khớp giả xương dài chi dưới</a></td>
                <td class="tlyk-btdl"><a download href=""><img src="https://img.icons8.com/color/48/000000/pdf.png">Tải về</a></td>
            </tr>
            </tbody>
        </table>


<%--        <div class="tlyk-item">--%>
<%--            <div class="tlyk-i1">--%>
<%--                <div class="tlyk__img">--%>
<%--                    <img src="https://img.icons8.com/cotton/64/000000/hospital-folder.png">--%>
<%--                </div>--%>
<%--                <div class="tlyk__text">--%>
<%--                    <a href="" target="_blank">Nghiên cứu ứng dụng xương nhân tạo, máu tuỷ xương tự thân điều trị khớp giả xương dài chi dưới</a>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--            <div class="tlyk__dlbt">--%>
<%--                <a href=""><img src="https://img.icons8.com/color/96/000000/export-pdf.png"> </a>--%>
<%--            </div>--%>
<%--        </div>--%>
<%--        <div class="tlyk-item">--%>
<%--            <div class="tlyk-i1">--%>
<%--                <div class="tlyk__img">--%>
<%--                    <img src="https://img.icons8.com/cotton/64/000000/hospital-folder.png">--%>
<%--                </div>--%>
<%--                <div class="tlyk__text">--%>
<%--                    <a href="" target="_blank">Nghiên cứu ứng dụng xương nhân tạo, máu tuỷ xương tự thân điều trị khớp giả xương dài chi dưới</a>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--            <div class="tlyk__dlbt">--%>
<%--                <a href=""><img src="https://img.icons8.com/color/96/000000/export-pdf.png"> </a>--%>
<%--            </div>--%>
<%--        </div>--%>
<%--        <div class="tlyk-item">--%>
<%--            <div class="tlyk-i1">--%>
<%--                <div class="tlyk__img">--%>
<%--                    <img src="https://img.icons8.com/cotton/64/000000/hospital-folder.png">--%>
<%--                </div>--%>
<%--                <div class="tlyk__text">--%>
<%--                    <a href="" target="_blank">Nghiên cứu ứng dụng xương nhân tạo, máu tuỷ xương tự thân điều trị khớp giả xương dài chi dưới</a>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--            <div class="tlyk__dlbt">--%>
<%--                <a href=""><img src="https://img.icons8.com/color/96/000000/export-pdf.png"> </a>--%>
<%--            </div>--%>
<%--        </div>--%>
<%--        <div class="tlyk-item">--%>
<%--            <div class="tlyk-i1">--%>
<%--                <div class="tlyk__img">--%>
<%--                    <img src="https://img.icons8.com/cotton/64/000000/hospital-folder.png">--%>
<%--                </div>--%>
<%--                <div class="tlyk__text">--%>
<%--                    <a href="" target="_blank">Nghiên cứu ứng dụng xương nhân tạo, máu tuỷ xương tự thân điều trị khớp giả xương dài chi dưới</a>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--            <div class="tlyk__dlbt">--%>
<%--                <a href=""><img src="https://img.icons8.com/color/96/000000/export-pdf.png"> </a>--%>
<%--            </div>--%>
<%--        </div>--%>
<%--        <div class="tlyk-item">--%>
<%--            <div class="tlyk-i1">--%>
<%--                <div class="tlyk__img">--%>
<%--                    <img src="https://img.icons8.com/cotton/64/000000/hospital-folder.png">--%>
<%--                </div>--%>
<%--                <div class="tlyk__text">--%>
<%--                    <a href="" target="_blank">Nghiên cứu ứng dụng xương nhân tạo, máu tuỷ xương tự thân điều trị khớp giả xương dài chi dưới</a>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--            <div class="tlyk__dlbt">--%>
<%--                <a href=""><img src="https://img.icons8.com/color/96/000000/export-pdf.png"> </a>--%>
<%--            </div>--%>
<%--        </div>--%>
<%--        <div class="tlyk-item">--%>
<%--            <div class="tlyk-i1">--%>
<%--                <div class="tlyk__img">--%>
<%--                    <img src="https://img.icons8.com/cotton/64/000000/hospital-folder.png">--%>
<%--                </div>--%>
<%--                <div class="tlyk__text">--%>
<%--                    <a href="" target="_blank">Nghiên cứu ứng dụng xương nhân tạo, máu tuỷ xương tự thân điều trị khớp giả xương dài chi dưới</a>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--            <div class="tlyk__dlbt">--%>
<%--                <a href=""><img src="https://img.icons8.com/color/96/000000/export-pdf.png"> </a>--%>
<%--            </div>--%>
<%--        </div>--%>



        <!-- ===hidden tintuc element=== -->
        <a href="#" class="tinTuc__element article__element row d-none  mt-3 mt-md-5" id="tinTuc__element">
            <div class="col-12 col-md-5">
                <div class="tinTuc__element--img article__element--img">
                    <img src="https://thietbidienpanasonic.com/wp-content/uploads/2018/08/bep-dien-tu-panasonic-chat-luong-300x163.jpg"
                         alt="">
                    <div
                            class="tinTuc__element--time article__element d-flex flex-column justify-content-center align-items-center">
                        <div class="tinTuc__element--date article__element--date">28</div>
                        <div class="tinTuc__element--month article__element--date">Th8</div>
                    </div>
                </div>
            </div>
            <div class="col-12 col-md-7">
                <div class="tinTuc__element--info">
                    <h4 class="tinTuc__element--name article__element--name text-center text-md-left pt-3 pt-md-0">Đại lý cung
                        cấp bếp điện
                        từ Panasonic tp.HCM</h4>
                    <p class="tinTuc__element--description article__element--description">Hiện nay, với nhu cầu lắp đặt, sử dụng bếp
                        điện từ Panasonic ngày càng
                        nhiều, đặc biệt ở các thành phố lớn như Hà Nội, tp.HCM. Dòng sản phẩm bếp điện
                        từ Panasonic có nhiều ưu điểm nổi bật; chất lượng tốt, thiết kế tinh tế, độ bền
                        cao, giá thành phải chăng..</p>
                    <%--                    <p class="tinTuc__element--commentCount  text-uppercase">4 comments</p>--%>
                    <div class="tinTuc__element--showMoreBtn article__element--showMoreBtn d-flex d-md-none d-lg-flex">
                        <button class="btn-showMore">Xem Thêm</button>
                    </div>
                </div>
            </div>
        </a>
        <!-- ===end hidden tintuc element=== -->
    </div>
</div>



<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<link rel="stylesheet" href="plugins/gijgo-combined-1.9.13/css/gijgo.min.css">
<link rel="stylesheet" href="css/datlichkham.css">
<script src="plugins/gijgo-combined-1.9.13/js/gijgo.min.js"></script>
<script src="js/datlichkham.js"></script>

<section class="dat-lich">
    <div class="container">
        <div class="row">
            <div class="col-12 col-md-8">
                <div class="row">
                    <div class="col-12">
                        <h3>Thông tin đặt lịch</h3>
                    </div>
                    <div class="col-12 col-md-6">
                        <div class="form-group">
                            <label for="name">Họ Tên (*)</label>
                            <input type="text" class="form-control" id="name" placeholder="Họ và tên">
                            <div class="valid-feedback">
                                Looks good!
                            </div>
                        </div>
                    </div>
                    <div class="col-12 col-md-6">
                        <div class="row">
                            <div class="col-6">
                                <div class="form-group">
                                    <label for="age">Tuổi (*)</label>
                                    <input type="text" class="form-control" id="age" placeholder="Tuổi">
                                    <div class="valid-feedback">
                                        Looks good!
                                    </div>
                                </div>
                            </div>
                            <div class="col-6">
                                <label class="d-block">Giới tính</label>
                                <div class="form-check form-check-inline">
                                    <input class="form-check-input" type="radio" name="sex"
                                           id="male" value="option1">
                                    <label class="form-check-label" for="male">Nam</label>
                                </div>
                                <div class="form-check form-check-inline">
                                    <input class="form-check-input" type="radio" name="sex"
                                           id="female" value="option2">
                                    <label class="form-check-label" for="female">Nữ</label>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-12 col-md-6">
                        <div class="form-group">
                            <label for="phone">Số điện thoại (*)</label>
                            <input type="text" class="form-control" id="phone" placeholder="Số điện thoại">
                            <div class="valid-feedback">
                                Looks good!
                            </div>
                        </div>
                    </div>
                    <div class="col-12 col-md-6">
                        <div class="form-group">
                            <label for="coso">Chọn cơ sở</label>
                            <select class="form-control" id="coso">
                                <option>1</option>
                                <option>2</option>
                                <option>3</option>
                                <option>4</option>
                                <option>5</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-12 col-md-6">
                        <div class="form-group">
                            <label for="bs">Chọn bác sĩ</label>
                            <select class="form-control" id="bs">
                                <option>1</option>
                                <option>2</option>
                                <option>3</option>
                                <option>4</option>
                                <option>5</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-12 col-md-6">
                        <div class="row">
                            <div class="col-6">
                                <label for="">Ngày đặt lịch</label>
                                <div class="form-group ficon">
                                    <input type="text" class="form-control" id="date-picker">
                                    <div class="input-group-append d-none">
                                                <span class="input-group-text" id="basic-addon2"><i
                                                        class="far fa-calendar-check"></i></span>
                                    </div>
                                </div>
                            </div>
                            <div class="col-6">
                                <label for="name">Chọn giờ</label>
                                <div class="form-group ficon">
                                    <input type="text" class="form-control" id="time-picker">
                                    <div class="input-group-append d-none">
                                                <span class="input-group-text" id="basic-addon2"><i
                                                        class="far fa-clock"></i></span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-12 col-md-6">
                        <div class="form-group">
                            <label for="address">Địa chỉ liên hệ</label>
                            <input type="text" class="form-control" id="address" placeholder="Địa chỉ">
                        </div>
                    </div>
                    <div class="col-12">
                        <div class="form-group">
                            <label for="">Lí do khám</label>
                            <textarea name="" id="" cols="30" rows="10"></textarea>
                        </div>
                    </div>
                    <div class="col-12 col-md-6">
                        <button class="btn-primary btn-lg">Đặt lịch khám</button>
                    </div>
                </div>
            </div>
            <div class="col-12 col-md-4">
                <div class="widget widget-calendar">
                    <h3 class="widget-title text-center">Lịch làm việc</h3>
                    <div class="widget-content">
                        <p>Trung tâm làm việc tất cả các ngày trong tuần</p>
                        <p><strong>Sáng</strong>: 8h00 - 12h00</p>
                        <p><strong>Chiều</strong>: 13h30 - 17h30</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

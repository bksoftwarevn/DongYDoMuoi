let textName;
let textPhoneNumber;
let textEmail;

$(function () {
    hiddenNavHero();
    textName = $("#input-name");
    textPhoneNumber = $("#input-phone");
    textEmail = $("#input-email");
    InfoCustomer.init();
});

let InfoCustomer = {
    init: function () {
        this.resetInput();
        this.clickBtnSendInfo();
    },

    resetInput: function () {
        $('#input-name').val('');
        $('#input-email').val('');
        $('#input-phone').val('');
        $('#input-content').val('');
    },

    getInfo: function () {
        let customerInfo = {};
        customerInfo.name = $("#input-name").val();
        customerInfo.email = $("#input-email").val();
        customerInfo.phone = $("#input-phone").val();
        customerInfo.content = $("#input-content").val();
        customerInfo.companyId = COMPANY_ID;
        return customerInfo;
    },

    clickBtnSendInfo: function () {
        $("#btn-sendInfo")
            .off("click")
            .click(function () {
                let {check: cTen, val: vTen} = checkThongTinTen();
                let {check: cSDT, val: vSDT} = checkThongTinSDT();
                let {check: cEmail, val: vEmail} = checkThongTinEmail();
                let customerInfo = InfoCustomer.getInfo();
                if (cTen && cSDT && cEmail) {
                    $("#btn-sendInfo").text('Đang xử lý...').prop('disabled', true);
                    InfoSystemAPI.postInfo(customerInfo)
                        .then(rs1 => {
                            alertSuccess('Gửi thông tin liên hệ thành công');
                            $("#btn-sendInfo").text('Gửi đi').prop('disabled', false);
                            setTimeout(function () {
                                InfoCustomer.resetInput()
                            }, 2000);
                        }).catch(() => {
                        $("#btn-sendInfo").text('Gửi đi').prop('disabled', false);
                        alertWarning('Gửi thông tin thất bại');
                    });
                }
            });
    },
};

let InfoSystemAPI = {
    prefix: `infor-system-service/api/`,
    postInfo: function (data) {
        let uri = `${this.prefix}v1/public/contact`;
        return ajaxPost(uri, data);
    }
};


function checkThongTinTen() {
    let rs = false;
    let size = 50;
    let val = textName.val();
    if (regexTen(val) && checkSize(size, val)) {
        rs = true;
        hiddenError(textName);
    } else ViewInfo.viewError(textName, INVALID_NAME);
    return {check: rs, val: val};
}

function checkThongTinSDT() {
    let rs = false;
    let val = textPhoneNumber.val();
    if (regexDienThoai(val)) {
        rs = true;
        hiddenError(textPhoneNumber);
    } else ViewInfo.viewError(textPhoneNumber, INVALID_PHONE_NUMBER);
    return {check: rs, val: val};
}

function checkThongTinEmail() {
    let rs = false;
    let val = textEmail.val();
    if (regexEmail(val)) {
        rs = true;
        hiddenError(textEmail);
    } else ViewInfo.viewError(textEmail, INVALID_EMAIL);
    return {check: rs, val: val};
}
let ViewInfo = {
    viewError: function(selector, message){
        $(selector).addClass("is-invalid");
        $(selector).siblings(".invalid-feedback").text(`${message}`);
    }
}



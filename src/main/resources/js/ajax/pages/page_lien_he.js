let textName;
let textPhoneNumber;
let textEmail;

$(function () {
    hiddenNavHero();
    textName = $("#input-name");
    textPhoneNumber = $("#input-phone");
    textEmail = $("#input-email");

    InfoAdmin.fillInfo();
    InfoCustomer.init();
});
let InfoAdmin = {
    getCompanyInfo: async function () {
        let data;
        data = await Promise.resolve(companyFindById(COMPANY_ID)).then((rs) => rs);
        return data;
    },
    fillInfo: function () {
        this.getCompanyInfo().then((rs) => {
            $("#name-company").text(rs.nameCompany);
            $("#address-company").html(`<strong>Địa chỉ:</strong> ${rs.address}`);
            // $("#phonenumber-company").html(
            //     `<strong>Số điện thoại:</strong> 0981.044.566 - 0916.688.211`
            // );
            $("#email-company").html(
                `<strong>Email:</strong> <a href="#"> ${rs.email}</a>`
            );
            $("#website-company").html(
                ` <strong>Website:</strong> <a href="https://www.${rs.website}">${rs.website} </a>`
            );
            $("#map__iframe").attr("src", rs.map);
        });
    },
};
let InfoCustomer = {
    init: function () {
        this.clickDownloadSample();
        this.clickBtnSendInfo();
    },

    resetInput: function () {
        $('#name').val('');
        $('#email').val('');
        $('#phone-number').val('');
        $('#input-content-customer').val('');
        let f = document.getElementById('input-content-customer');
        if (f.value) {
            try {
                f.value = ''; //for IE11, latest Chrome/Firefox/Opera...
            } catch (err) {
            }
            if (f.value) { //for IE5 ~ IE10
                var form = document.createElement('form'),
                    parentNode = f.parentNode, ref = f.nextSibling;
                form.appendChild(f);
                form.reset();
                parentNode.insertBefore(f, ref);
            }
        }
    },

    getInfo: function () {
        let customerInfo = {};
        customerInfo.name = $("#name").val();
        customerInfo.email = $("#email").val();
        customerInfo.phone = $("#phone-number").val();
        customerInfo.content = $("#input-content-customer").val();
        customerInfo.companyId = COMPANY_ID;
        return customerInfo;
    },

    clickDownloadSample: function () {
        $("#btn-downloadFile").click(function () {
            window.open('https://docs.spring.io/spring/docs/2.5.x/spring-reference.pdf');
        });
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
    } else viewError(textName, INVALID_NAME);
    return {check: rs, val: val};
}

function checkThongTinSDT() {
    let rs = false;
    let val = textPhoneNumber.val();
    if (regexDienThoai(val)) {
        rs = true;
        hiddenError(textPhoneNumber);
    } else viewError(textPhoneNumber, INVALID_PHONE_NUMBER);
    return {check: rs, val: val};
}

function checkThongTinEmail() {
    let rs = false;
    let val = textEmail.val();
    if (regexEmail(val)) {
        rs = true;
        hiddenError(textEmail);
    } else viewError(textEmail, INVALID_EMAIL);
    return {check: rs, val: val};
}


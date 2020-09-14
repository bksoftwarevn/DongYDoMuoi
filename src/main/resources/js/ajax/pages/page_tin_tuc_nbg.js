$(function () {
    // $('#btn-downloadFile').off('click').click(function(){
    //     location.href = "https://docs.spring.io/spring/docs/2.5.x/spring-reference.pdf";
    // })
    $("#exampleModal").on("shown.bs.modal", function (e) {
        InfoCustomer.init();
    });
});
let InfoAdmin = {
    fillInfo: function () {},
};
let InfoCustomer = {
    init: function () {
        this.clickDownloadSample();
        this.clickBtnSendInfo();
    },
    getInfo: function () {
        let customerInfo = {};
        customerInfo.name = $('#input-name-customer').val();
        customerInfo.email = $('#input-email-customer').val();
        customerInfo.phone = $('#input-phone-customer').val();
        customerInfo.content = $('#input-content-customer').val();
        customerInfo.file = document.getElementById('input-file-customer').files;
        return customerInfo;
    },
    clickDownloadSample: function () {
        $("#btn-downloadFile").attr('href', 'https://www.google.com')
    },
    clickBtnSendInfo: function(){
        $("#btn-sendInfo").off('click').click(function(){
            let infoCus = InfoCustomer.getInfo();
            console.log(infoCus);
        })
    }
};

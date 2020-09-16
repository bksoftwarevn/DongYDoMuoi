let currentPage = 1;
let sizePage = 99;
$(function () {
    hiddenNavHero();
    initElement(currentPage, sizePage);
});

async function getListTinTuc(page, size) {
    let rs;
    rs = await Promise.resolve(newsFilter(0, COMPANY_ID, GIOI_THIEU_TYPE, "", "", page, size))
        .then((rs1) => rs1)
        .catch((err) => console.log(err));
    return rs;
}

function generateTinTucElement(object) {
    let tinTucElement = $("#tinTuc__element").clone();
    tinTucElement.removeClass("d-none").removeAttr("id");
    // tinTucElement.attr('href', `chi-tiet-gioi-thieu?id=${object.id}`);
    tinTucElement.attr('href', viewAliasInfo(object.alias, object.id));
    tinTucElement
        .find("div.tinTuc__element--img img")
        .attr("src", viewSrcFile(object.image));
    tinTucElement
        .find("h4.tinTuc__element--name")
        .text(object.name ? object.name : "");
    tinTucElement
        .find("p.tinTuc__element--description")
        .text(object.preview ? object.preview : "");
    tinTucElement.find("p.tinTuc__element--commentCount").text("4 comments");
    tinTucElement.find('.tinTuc__element--date').text(TimeUtils.formatTime(object.creatTime).d);
    tinTucElement.find('.tinTuc__element--month').text(TimeUtils.formatTime(object.creatTime).m);
    return tinTucElement;
}
function initElement(page, size) {
    getListTinTuc(page, size).then(rs => {
        rs=rs.content;
        mappingElement(rs);
    });
}
function mappingElement(listData){
    listData.forEach((element) => {
        let templateTinTucElement = generateTinTucElement(element);
        $("#list-tin-tuc").append(templateTinTucElement);
    });
}





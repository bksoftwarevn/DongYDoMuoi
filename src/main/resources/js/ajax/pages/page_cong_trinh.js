let listTinTucData;
let currentPage = 1;
let sizePage = 6;
let tag;
$(function () {
    hiddenNavHero();
    localStorage.setItem('isTinTuc', 'false');
    localStorage.setItem('isChiTiet', 'false');
    let url = new URL(location.href);
    tag = url.searchParams.get('tag');
    if (tag !== null) {
        tag = StringHandle.formatBlank(tag);
    } else {
        tag = '';
    }
    initElement(currentPage, sizePage);
    clickShowMoreNews();
});

async function getListTinTuc(page, size) {
    let rs;
    rs = await Promise.resolve(newsFilter(0, COMPANY_ID, NGHIEN_CUU_TYPE, "", tag, page, size))
        .then((rs1) => rs1)
        .catch((err) => console.log(err));
    return rs;
}

function generateTinTucElement(object) {
    let tinTucElement = $("#tinTuc__element").clone();
    tinTucElement.removeClass("d-none").removeAttr("id");
    tinTucElement.attr('href', viewAliasConstruction(object.alias, object.id));
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

function clickMoreDetails() {
    $(".btn-showMore")
        .off("click")
        .click(function () {
            let url = $(this).parents("a.tinTuc__element").attr("href");
            location.href = url;
        });
}

function initElement(page, size) {
    getListTinTuc(page, size).then(rs => {
        if (rs.totalPages < 2 ) {
            $("#btn-showMoreNews").hide();
        } else {
            $("#btn-showMoreNews").show();
        }
        rs = rs.content;
        mappingElement(rs);
    });
}

function mappingElement(listData) {
    listData.forEach((element) => {
        let templateTinTucElement = generateTinTucElement(element);
        $("#list-tin-tuc").append(templateTinTucElement);
        clickMoreDetails();
    });
}

function clickShowMoreNews() {
    $("#btn-showMoreNews").click(function () {
        currentPage++;
        getListTinTuc(currentPage, sizePage).then(rs => {
            if (currentPage<rs.totalPage) {
                $("#btn-showMoreNews").show();
            } else {
                $("#btn-showMoreNews").hide();
            }
            rs = rs.content;
            mappingElement(rs);
        });
    });
}

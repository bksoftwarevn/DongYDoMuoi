let listTinTucData;
let currentPage = 1;
let sizePage = 6;
let tag;
$(function () {
    hiddenNavHero();

    let url = new URL(location.href);
    tag = url.searchParams.get('tag');
    if (tag !== null) {
        tag = StringHandle.formatBlank(tag);
    } else {
        tag = '';
    }
    News.initElement(currentPage, sizePage);
    News.clickShowMoreNews();
    News.getListTinTuc(1, 6).then(rs=>console.log(rs));
});

let News = {
    getListTinTuc: async function (page, size) {
        let rs;
        rs = await Promise.resolve(newsFilter(0, COMPANY_ID, TUYEN_DUNG_TYPE, "", tag, page, size))
            .then((rs1) => rs1)
            .catch((err) => console.log(err));
        return rs;
    },

    generateTinTucElement: function (object) {
        let tinTucElement = $("#tinTuc__element").clone();
        tinTucElement.removeClass("d-none").removeAttr("id");
        // tinTucElement.attr('href', `chi-tiet-tin-tuc?id=${object.id}`);
        tinTucElement.attr('href', `chi-tiet-tuyen-dung?id=${object.id}`);
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
    },
    mappingElement: function (listData) {
        listData.forEach((element) => {
            let templateTinTucElement = News.generateTinTucElement(element);
            $("#list-tin-tuc").append(templateTinTucElement);
        });
    },
    initElement: function (page, size) {
        this.getListTinTuc(page, size).then(rs => {
            if (rs.totalPages < 2) {
                $("#btn-showMoreNews").hide();
            } else {
                $("#btn-showMoreNews").show();
            }
            rs = rs.content;
            News.mappingElement(rs);
        });
    },
    clickShowMoreNews: function() {
        $("#btn-showMoreNews").click(function () {
            currentPage++;
            News.getListTinTuc(currentPage, sizePage).then(rs => {
                if (currentPage < rs.totalPage) {
                    $("#btn-showMoreNews").show();
                } else {
                    $("#btn-showMoreNews").hide();
                }
                rs = rs.content;
                News.mappingElement(rs);
            })
        });

    }

}






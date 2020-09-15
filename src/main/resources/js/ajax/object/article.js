let Article =  {
    data: {},
    endpoint: 'string'
}

// function Recruitment() {
//     Article.call(this);
//     this.returnLink = 'chi-tiet-tuyen-dung';
// }


let ArticleController = {
    currentPage: 1,

    getListArticle: async function (page, size, type) {
        let rs;
        rs = await Promise.resolve(newsFilter(0, COMPANY_ID, type, "", tag, page, size))
            .then((rs1) => rs1)
            .catch((err) => console.log(err));
        return rs;
    },
    //callback trả về template tương ứng từng web
    generateArticleElement: function (object, selector, callback) {
        if(callback){
            // data and parent of template
            let template = callback(object, selector);
            return template;
        }
        return null;
    },

    appendListElements: function (listData, callback) {
        listData.forEach((element) => {
            let templateTinTucElement = ArticleController.generateArticleElement(element);
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
            News.appendListElements(rs);
        });
    },

    clickShowMoreNews: function(data, selector) {
        $(selector).click(function () {
            this.currentPage++;
            News.getListTinTuc(currentPage, sizePage).then(rs => {
                if (currentPage < rs.totalPage) {
                    $(selector).show();
                } else {
                    $(selector).hide();
                }
                rs = rs.content;
                ArticleController.mappingElement(rs);
            })
        });

    }
};


let ArticleDetailController = {
    handleTag : function(data, endpoint) {
        if (!(data === '' || data === null)) {
            let listTags = data.split("|");
            let templateTags = listTags.map(data => {
                return `<a href="${endpoint}?tag=${data}" class="text-uppercase" style="color: #007bff; font-size: 1.4rem;">${data}</a>`
            }).join(', ');
            return templateTags;
        }
        return '';
    },
    //data = article.data
    mapTitleAndTag : function (article) {
        console.log(article);
        $('.tinTuc__title--tagsTinTuc').html(ArticleDetailController.handleTag(article.data.tag,article.endpoint));
        $(".tinTuc__title h2").text(article.data.name);
    },
    //tham so data = Article
    generateArticle: function (article, callback) {
        if(callback){
            callback(article);
        }

        let templateArticle = $('#hidden-chiTietTinTuc').clone().removeClass("d-none");
        templateArticle.find('.tinTuc__element--img img').attr('src', viewSrcFile(article.data.image));
        templateArticle.find('.tinTuc__title--autho').html(`được đăng
                vào <a style="color: blue; cursor: default;" href="">${TimeUtils.formatTime(article.data.creatTime).d} tháng ${TimeUtils.formatTime(article.data.creatTime).mInNumber}</a> bởi ${article.data.author}`);
        templateArticle.find('.tinTuc__contentTinTuc').html(article.data.content);
        templateArticle.find('.tinTuc__previewTinTuc').text(article.data.preview);
        return templateArticle;
    },

    mappingDetailArticle: function (article, parentSelector) {
        $(parentSelector).prepend(ArticleDetailController.generateArticle(article, ArticleDetailController.mapTitleAndTag(article)))
    },

    increaseView : function (id) {
        let uri = `news-service/api/v1/public/statistic/news/${id}/view`;
        return ajaxPut(uri);
    },
};

let TemplateArticle = {
    generateTemplateArticle: function(article = {...Article}, selector){
        let template = $(selector).clone().removeAttr('id').removeClass('d-none');
        template.find('img').attr('src', viewAliasArticle(article.data.alias, article.endpoint, article.data.id));
        template.find('')
    }
}


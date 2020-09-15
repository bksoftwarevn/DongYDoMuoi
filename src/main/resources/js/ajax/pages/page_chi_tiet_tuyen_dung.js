$(function () {
    hiddenNavHero();
    localStorage.setItem('isTinTuc', 'true');
    localStorage.setItem('isChiTiet', 'true');
    let idTinTuc = getPageId();
    News.mappingNews(idTinTuc);
    News.increaseView(idTinTuc).then(rs => console.log(rs));
});

let News = {

    getNewsData: async function (idNews = 116) {
        let newsData;
        newsData = await Promise.resolve(newsFindById(idNews))
            .then(rs => rs)
            .catch(err => console.log(err));
        return newsData;
    },

    generateNew: function (object) {
        $('.tinTuc__title--tagsTinTuc').html(this.handleTag(object.tag));
        $(".tinTuc__title h2").text(object.name);
        let templateNews = $('#hidden-chiTietTinTuc').removeClass("d-none");
        templateNews.find('.tinTuc__element--img img').attr('src', viewSrcFile(object.image));
        templateNews.find('.tinTuc__title--autho').html(`được đăng
                vào <a style="color: blue; cursor: default;" href="">${TimeUtils.formatTime(object.creatTime).d} tháng ${TimeUtils.formatTime(object.creatTime).mInNumber}</a> bởi ${object.author}`);
        templateNews.find('.tinTuc__contentTinTuc').html(object.content);
        templateNews.find('.tinTuc__previewTinTuc').text(object.preview);
    },

    handleTag: function (data) {
        if (!(data === '' || data === null)) {
            let listTags = data.split("|");
            let templateTags = listTags.map(data => {
                return `<a href="tuyen-dung?tag=${data}" class="text-uppercase" style="color: #007bff; font-size: 1.4rem;">${data}</a>`
            }).join(', ');
            return templateTags;
        }
        return '';
    },

    mappingNews: function (idTinTuc) {
        this.getNewsData(idTinTuc).then(rs => this.generateNew(rs)).catch(er => console.log(er));
    },
    increaseView: function (id) {
        let uri = `news-service/api/v1/public/statistic/news/${id}/view`;
        return ajaxPut(uri);
    }
};

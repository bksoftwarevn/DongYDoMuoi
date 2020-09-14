let idCongTrinh;
$(function () {
    hiddenNavHero();
    localStorage.setItem('isTinTuc', 'false');
    localStorage.setItem('isChiTiet', 'true');
    idCongTrinh = getPageId();
    News.increaseView(idCongTrinh).then();
    News.mappingNews(idCongTrinh);
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
        console.log(object);
        $('.tinTuc__title--tagsTinTuc').html(this.handleTag(object.tag));
        $(".tinTuc__title h2").text(object.name);
        let templateNews = $('#hidden-chiTietTinTuc').removeClass("d-none");
        if (object.enableVideo) {
            templateNews.find('.tinTuc__element--img').html(`
            <video controls autoplay playsinline  style="width: 100%; height: auto;">
                <source src="${viewSrcFile(object.video)}" type="video/mp4">
            </video>`)
        } else {
            templateNews.find('.tinTuc__element--img img').attr('src', viewSrcFile(object.image));
        }
        templateNews.find('.tinTuc__title--autho').html(`được đăng
                vào <a style="color: blue;  cursor: default;" href="">${TimeUtils.formatTime(object.creatTime).d} tháng ${TimeUtils.formatTime(object.creatTime).mInNumber}</a> bởi ${object.author}`);
        templateNews.find('.tinTuc__contentTinTuc').html(object.content);
        templateNews.find('.tinTuc__previewTinTuc').text(object.preview);
    },

    handleTag: function (data) {
        if (!(data === '' || data === null)) {
            let listTags = data.split("|");
            let templateTags = listTags.map(data => {

                return `<a href="cong-trinh?tag=${data}" class="text-uppercase " style="color: #007bff; font-size: 1.4rem;">${data}</a>`
            }).join(',  ');
            return templateTags;
        }
        return '';
    },

    saveTag: function (data) {
        localStorage.setItem('tag', data);
    },
    mappingNews: function (idArticle) {
        this.getNewsData(idArticle).then(rs => this.generateNew(rs)).catch(er => console.log(er));
    },

    increaseView: function (id) {
        let uri = `news-service/api/v1/public/statistic/news/${id}/view`;
        return ajaxPut(uri);
    }
};


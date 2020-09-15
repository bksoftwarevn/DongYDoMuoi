$(function () {
    hiddenNavHero();
    let idRecruitment = getPageId();
    Recruitment.mappingRecruitment(idRecruitment);
    Recruitment.increaseView(idRecruitment).then();
});

let Recruitment = {
    getRecruitmentData: async function (idNews ) {
        let newsData;
        newsData = await Promise.resolve(newsFindById(idNews))
            .then(rs => rs)
            .catch(err => console.log(err));
        return newsData;
    },

    generateRecuitment: function (object) {
        $('.tinTuc__title--tagsTinTuc').html(this.handleTag(object.tag));
        $(".tinTuc__title h2").text(object.name);
        let templateRecuitment = $('#hidden-chiTietTinTuc').removeClass("d-none");
        templateRecuitment.find('.tinTuc__element--img img').attr('src', viewSrcFile(object.image));
        templateRecuitment.find('.tinTuc__title--autho').html(`được đăng
                vào <a style="color: blue; cursor: default;" href="">${TimeUtils.formatTime(object.creatTime).d} tháng ${TimeUtils.formatTime(object.creatTime).mInNumber}</a> bởi ${object.author}`);
        templateRecuitment.find('.tinTuc__contentTinTuc').html(object.content);
        templateRecuitment.find('.tinTuc__previewTinTuc').text(object.preview);
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

    mappingRecruitment: function (idTinTuc) {
        this.getRecruitmentData(idTinTuc).then(rs => this.generateRecuitment(rs)).catch(er => console.log(er));
    },

    increaseView: function (id) {
        let uri = `news-service/api/v1/public/statistic/news/${id}/view`;
        return ajaxPut(uri);
    }
};

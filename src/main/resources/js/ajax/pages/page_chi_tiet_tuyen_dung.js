$(function () {
    hiddenNavHero();
    // let Recruitment = {...Article};
    let articleBox = $('#article-box');
    let idRecruitment = getPageId();
    newsFindById(idRecruitment)
        .then(rs=>{
            let Recruitment = {...Article};
            Recruitment.data = rs;
            Recruitment.endpoint = 'tuyen-dung';

            let RecruitmentDetailController = {...ArticleDetailController};
            RecruitmentDetailController.article = Recruitment;
            RecruitmentDetailController.mappingDetailArticle(Recruitment, articleBox);
            RecruitmentDetailController.increaseView(idRecruitment).then();

        })
        .catch(err=>console.log(err));


});



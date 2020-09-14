var slideBanner, bannerItemTemp;

$(function() {
    slideBanner = $("#banner-main");
    bannerItemTemp = $("#banner-item-temp");
    viewSlideBanner();
})

function viewSlideBanner() {
    contentFindByCompany(COMPANY_ID, "slide").then(rs => {
        if(rs[0] && rs[0].partDetails) {
            rs = rs[0].partDetails;
            rs.map(data => {
                let bannerItemClone = bannerItemTemp.clone();
                bannerItemClone.attr("href", viewField(data.link));
                let imgItemClone = bannerItemClone.find("img");
                imgItemClone.attr("src", viewSrcFile(data.url));
                imgItemClone.attr("alt", viewField(data.text));
                bannerItemTemp.before(bannerItemClone);
            })
            bannerItemTemp.remove();
            slideBanner.slick({
                dots: true,
                infinite: true,
            });
        }
    }).catch(err => {
        console.log(err);
    })
}
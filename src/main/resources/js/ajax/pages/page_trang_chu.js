var slideBanner, bannerItemTemp;

$(function() {
    slideBanner = $("#banner-main");
    bannerItemTemp = $("#banner-item-temp");
    viewSlideBanner();
    viewQuangCao();
    viewGioiThieu();
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

function viewQuangCao() {
    contentFindByCompany(COMPANY_ID, "quang-cao").then(rs => {
        if(rs[0] && rs[0].partDetails) {
            rs = rs[0].partDetails;
            for (let i = 0; i < 4; i++) {
                let data = rs[i];
                let elementGioiThieu = $(`#img-gioi-thieu-${i + 1}`);
                let imgElementGioiThieu = elementGioiThieu.find("img");
                elementGioiThieu.attr("href", viewField(data.link));
                imgElementGioiThieu.attr("src", viewSrcFile(data.url));
                imgElementGioiThieu.attr("alt", viewSrcFile(data.text));
            }
        }
    }).catch(err => {
        console.log(err);
    })
}

function viewGioiThieu() {
    contentFindByCompany(COMPANY_ID, "gioi-thieu").then(rs => {
        if(rs[0] && rs[0].partDetails) {
            rs = rs[0].partDetails;
            for (let i = 0; i < 7; i++) {
                let data = rs[i];
                let elementGioiThieu = $(`#gioi-thieu-${i + 1}`);
                elementGioiThieu.find(".text-gioi-thieu").html(viewField(data.text));
                elementGioiThieu.find(".href-gioi-thieu").attr("href", data.link);
                let imgElementGioiThieu = elementGioiThieu.find("img");
                imgElementGioiThieu.attr("src", viewSrcFile(data.url));
                imgElementGioiThieu.attr("alt", viewSrcFile(data.text));
            }
        }
    }).catch(err => {
        console.log(err);
    })
}
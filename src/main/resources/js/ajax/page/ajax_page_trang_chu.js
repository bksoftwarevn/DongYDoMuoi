var listProductTemp, productTemp, contructionCarouselTemp, quoteBG, partnerCarouselTemp;

$(function() {
    listProductTemp = $("#list-product-temp");
    productTemp = $("#product-temp");
    contructionCarouselTemp = $("#construction-carousel-temp");
    quoteBG = $("#quote-bg");
    partnerCarouselTemp = $("#partner-carousel-temp");
    viewPopup();
    viewGioiThieu();
    viewListProductProductType();
    viewConstructionCarousel();
    viewViSao();
    viewQuote();
    viewPartner();
})

function viewGioiThieu() {
    contentFindByCompany(COMPANY_ID, "gioi-thieu").then(rs => {
        if(rs[0] && rs[0].partDetails) {
            rs = rs[0].partDetails;
            for (let i = 0; i < 3; i++) {
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

function viewListProductProductType() {
    productTypeFindByCompany(COMPANY_ID, true).then(rs => {
        if(rs) {
            rs.map(async data => {
                let listProductClone = listProductTemp.clone();
                listProductClone.find(".lp-product-type-name").html(viewField(data.name));
                listProductClone.find(".lp-product-type-link").attr("href", viewAliasProductType(data.alias, data.id));
                listProductClone.attr("data-product-type", data.id);
                listProductClone.removeAttr("id");
                listProductClone.find("#product-temp").remove();
                listProductTemp.before(listProductClone);
                //call product list
                await productFilter(COMPANY_ID, data.id, categories = null, brand = 0, text = "", status = 0, sortType = "date", asc = true, page = 1, size = 8).then(rs => {
                    if(rs) {
                        rs = rs.content;
                        let listProduct = getListProduct(rs);
                        $(`.product-wrapper[data-product-type='${data.id}'] .row`).append(listProduct);
                        runToolTip();
                        clickBtnAddCart();
                    }
                }).catch(err => {
                    console.log(err);
                    alertDanger(DANGER_PRODUCT_BY_PRODUCT_TYPE + data.name);
                })
                listProductTemp.remove();
            })
        }
    }).catch(err => {
        console.log(err);
    })

}

function viewConstructionCarousel() {
    newsFilter(0, COMPANY_ID, CONG_TRINH_TYPE, name= "", tag = "", page = 1, size = 8).then(rs => {
        if(rs) {
            rs = rs.content;
            let listContruction = rs.map(data => {
                let contructionCarouselClone = contructionCarouselTemp.clone();
                contructionCarouselClone.removeAttr("id");
                contructionCarouselClone.attr("href", viewAliasConstruction(data.alias, data.id));
                contructionCarouselClone.find(".construction-img").attr("src", viewSrcFile(data.image));
                let contructionCarouselText = contructionCarouselClone.find(".construction-text");
                contructionCarouselText.find("h3").html(viewField(data.name));
                contructionCarouselText.find("p").html(viewField(data.preview));
                return contructionCarouselClone;
            })
            contructionCarouselTemp.before(listContruction);
            contructionCarouselTemp.remove();
            runCarouselConstruction();
        }
    }).catch(err => {
        console.log(err);
        alertDanger(DANGER_CONTRUCTION);
    });
}

function viewViSao() {
    contentFindByCompany(COMPANY_ID, "vi-sao").then(rs => {
        if(rs[0] && rs[0].partDetails) {
            rs = rs[0].partDetails;
            let indexLyDoTitle = 1;
            let indexLyDoDes = 1;
            rs.map(data => {
                if(data.title === "ly-do-title") {
                    $(`#ly-do-${indexLyDoTitle++}`).find("h3").text(viewField(data.text));
                } else if(data.title === "ly-do-decs") {
                    $(`#ly-do-${indexLyDoDes}`).find("img").attr("src", viewSrcFile(data.url));
                    $(`#ly-do-${indexLyDoDes++}`).find("p").text(viewField(data.text));
                } else if(data.title === "ly-do-img-banner") {
                    $("#ly-do-img-banner").attr("src", viewSrcFile(data.url));
                }
            })
        }
    }).catch(err => {
        console.log(err);
    })
}

function viewQuote() {
    contentFindByCompany(COMPANY_ID, "quote").then(rs => {
        if(rs[0] && rs[0].partDetails) {
            rs = rs[0].partDetails[0];
            quoteBG.attr("style",`background-image: url(${viewField(rs.url)})`);
        }
    }).catch(err => {
        console.log(err);
    })
}

function viewPartner() {
    brandFindByCompany(COMPANY_ID, 1, 999).then(rs => {
        if(rs) {
            rs = rs.content;
            let listPartner = rs.map(data => {
                let partnerCarouselClone = partnerCarouselTemp.clone();
                let imgPartner = partnerCarouselClone.find("img");
                imgPartner.attr("src", viewSrcFile(data.image));
                imgPartner.attr("alt", viewField(data.name));
                return partnerCarouselClone;
            });
            partnerCarouselTemp.before(listPartner);
            partnerCarouselTemp.remove();
            runPartnerCarousel();
        }
    }).catch(err => {
        console.log(err);
    })
}

function viewPopup() {
    popupFindShowedCompany(COMPANY_ID).then(rs => {
        if (rs) {
            $("#set-popup").html(`<a href="${rs.link}" id="img-pop-up">
                                    <img src="${viewSrcFile(rs.url)}" alt="${rs.name}">
                                    <div class="close-popup">
                                             [x]
                                    </div>
                                </a>
                                `)
            $(".popup-ad").removeClass("d-none");
            $(".close-popup").click(function () {
                $(".popup-ad").css("display", "none");
                return false;
            });
        }
    }).catch(err => {
        console.log(err);
    })
}

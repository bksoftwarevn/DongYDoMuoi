var textNameCompany, textSlogan, linkEmailCompany, textEmailCompany, linkFacebookCompany, linkYoutubeCompany, linkZaloCompany, descriptionCompnay, iframeAddressCompany,
    textAddressCompany, linkPhoneCompany, linkPhoneCompany2, textPhoneCompany, textPhoneCompany2, liNavTemp, selectCategorySearch, textSearch, navNTemp, navCategory, listNewFooter, listInfoFooter, listFileFooter;

$(function () {
    textNameCompany = $(".text-name-company");
    textSlogan = $(".text-solgan");
    linkEmailCompany = $(".link-email-company");
    textEmailCompany = $(".text-email-company");
    linkFacebookCompany = $(".link-facebook-company");
    linkYoutubeCompany = $(".link-youtube-company");
    linkZaloCompany = $(".link-zalo-company");
    descriptionCompnay = $(".description-compnay");
    iframeAddressCompany = $(".iframe-address-company");
    textAddressCompany = $(".text-address-company");
    linkPhoneCompany = $(".link-phone-comany");
    linkPhoneCompany2 = $(".link-phone-comany2");
    textPhoneCompany = $(".text-phone-company");
    textPhoneCompany2 = $(".text-phone-company2");
    navCategory = $("#nav-category");
    listNewFooter = $("#list-new-footer");
    listInfoFooter = $("#list-info-footer");
    listFileFooter = $("#list-file-footer");

    liNavTemp = $("#li-nav-temp");
    selectCategorySearch = $("#cars");
    textSearch = $("#text-search");
    navNTemp = liNavTemp.find(".class-n");

    viewSocialCompany();
    activeMenuMain();
    viewNavAndSelectCategorySearch();
    viewNumberCart();
    viewListNewsFooter();
    viewListInfoFooter();
    viewListFileFooter();
})

//HEADER
function viewSocialCompany() {
    companyFindById(COMPANY_ID).then(rs => {
        if(rs) {
            let {address, description, email, logo, map, nameCompany, website, slogan} = rs;
            textNameCompany.html(viewField(nameCompany));
            textSlogan.html(viewField(slogan));
            linkEmailCompany.attr("href", email ? `mailto:${email}` : "");
            textEmailCompany.html(viewField(email));
            descriptionCompnay.html(viewField(description));
            iframeAddressCompany.attr("src", viewField(map));
            textAddressCompany.html(viewField(address));
        }
    }).catch(err => {
        console.log(err);
        alertDanger(DANGER_INFOR_COMPANY);
    })
    infoFindByCompany(COMPANY_ID).then(rs => {
        if(rs) {
            let arrDienThoai = rs.filter(data => data.type === 1 );
            let arrFacebook = rs.filter(data => data.type === 2);
            let arrYoutube = rs.filter(data => data.type === 4);
            let arrZalo = rs.filter(data => data.type === 9);
            linkFacebookCompany.attr("href", viewField(arrFacebook[0].value));
            linkYoutubeCompany.attr("href", viewField(arrYoutube[0].value));
            linkZaloCompany.attr("href", viewField(arrZalo[0].value));
            //PHONE NUMBER
            let valuePhoneNumber = arrDienThoai[0] ? arrDienThoai[0].value : null;
            let valuePhoneNumber2 = arrDienThoai[1] ? arrDienThoai[1].value : null;
            linkPhoneCompany.attr("href", valuePhoneNumber ? `tel:${valuePhoneNumber}` : "");
            linkPhoneCompany2.attr("href", valuePhoneNumber ? `tel:${valuePhoneNumber2}` : "");
            textPhoneCompany.text(viewField(valuePhoneNumber));
            textPhoneCompany2.text(viewField(valuePhoneNumber2));
        }
    }).catch(err => {
        console.log(err);
        alertDanger(DANGER_INFOR_COMPANY);
    })
}

async function viewNavAndSelectCategorySearch() {
    await productTypeFindByCompany(COMPANY_ID).then(rs => {
        if(rs) {
            let optionTemp = selectCategorySearch.find("option");
            rs.map(data => {
                let liNavTempClone = liNavTemp.clone();
                liNavTempClone.removeClass("d-none");
                liNavTempClone.find(".nav-href").attr("href", viewAliasProductType(data.alias, data.id));
                liNavTempClone.find(".nav-href").attr("data-id", data.id);
                liNavTempClone.find(".nav-text").html(viewField(data.name));
                liNavTempClone.find(".nav1").attr("data-id", data.id);
                liNavTempClone.removeAttr("id");
                //add html
                liNavTemp.before(liNavTempClone);
                //add Nav1
                viewNav1(data.id);
                //viewSelectProductTypeSearch
                let optionClone = optionTemp.clone();
                optionClone.removeAttr("selected");
                optionClone.attr("value", viewAliasProductType(data.alias, data.id));
                optionClone.html(viewField(data.name));
                selectCategorySearch.append(optionClone);
            })
        }
    }).catch(err => {
        console.log(err);
        alertDanger(DANGER_PRODUCT_TYPE);
    })
    //view nav1-category

}

function viewNav1(id) {
    categoryProductFindByProductType(id).then(rs => {
        let ulNav1 = $(`.nav1[data-id=${id}]`);
        let liNav1 = ulNav1.find(" > li");
        if(rs && rs.length > 0) {
            ulNav1.removeClass("d-none");
            //view arrow icon
            $(`.nav-href[data-id=${id}]`).append(`<i class="fas fa-angle-double-right"></i>`);
            rs.map(data => {
                let liNav1Clone = liNav1.clone();
                let nav1Href = liNav1Clone.find(".nav1-href");
                nav1Href.attr("href", viewAliasCategory(data.alias, data.id));
                nav1Href.html(viewField(data.name));
                liNav1Clone.attr("data-id", data.id);
                liNav1Clone.find(".class-n").remove();
                liNav1.before(liNav1Clone);
                viewChildsCategory(data.childs, data.id);
            })
        } else {
            ulNav1.remove();
        }
        liNav1.remove();
    }).catch(err => {
        console.log(err);
    })
}

function viewChildsCategory(listChild, idCategory) {
    if(listChild && listChild.length > 0) {
        let navNClone = navNTemp.clone();
        let liNTemp = navNTemp.find("li");
        let listLi = listChild.map(data => {
            let liClone = liNTemp.clone();
            liClone.attr("data-id", data.id);
            liClone.find("a").attr("href", viewAliasCategory(data.alias, data.id));
            liClone.find("a").html(viewField(data.name));
            return liClone;
        })
        navCategory.find(`li[data-id='${idCategory}']`).append(navNClone.html(listLi));
        listChild.map(data => {
            viewChildsCategory(data.childs, data.id);
        })
    }
}

function searchProduct() {
    let linkProductType = selectCategorySearch.val();
    let search = textSearch.val();
    location.href  = `${linkProductType}&search=${search}`;
}


//END_HEADER

//FOOTER
//END_FOOTER

//ActiveMenuMain
function activeMenuMain() {
    let {pathname} = location;
    if(pathname == "/") pathname = "/trang-chu";
    $("#nav-main li").removeClass("active");
    $(`#nav-main li[data-active='${pathname.slice(1)}']`).addClass("active");
}

function viewListNewsFooter() {
    newsFilter(0, COMPANY_ID, TIN_TUC_TYPE, "", "", 1, 5).then(rs => {
        if(rs) {
            rs = rs.content;
            let liTemp = listNewFooter.find(".d-none").removeClass("d-none");
            let listLi = rs.map(data => {
                let liClone = liTemp.clone();
                liClone.find(".link-new").attr("href", viewAliasNews(data.alias, data.id));
                liClone.find(".name-new").html(viewField(data.name));
                return liClone;
            })
            listNewFooter.html(listLi);
        }
    }).catch(err => {
        console.log(err);
        alertDanger(DANGER_LOAD_FOOTER_NEW);
    })
}

function viewListInfoFooter() {
    newsFilter(0, COMPANY_ID, GIOI_THIEU_TYPE, "", "", 1, 5).then(rs => {
        if(rs) {
            rs = rs.content;
            let liTemp = listInfoFooter.find(".d-none").removeClass("d-none");
            let listLi = rs.map(data => {
                let liClone = liTemp.clone();
                liClone.find(".link-new").attr("href", viewAliasNews(data.alias, data.id));
                liClone.find(".name-new").html(viewField(data.name));
                return liClone;
            })
            listInfoFooter.html(listLi);
        }
    }).catch(err => {
        console.log(err);
        alertDanger(DANGER_INFO_FOOTER);
    })
}

function viewListFileFooter() {
    productTypeFindByCompany(COMPANY_ID, true).then(rs => {
        if(rs) {
            let liTemp = listFileFooter.find(".d-none").removeClass("d-none");
            let listLi = rs.map(data => {
                let liClone = liTemp.clone();
                liClone.find(".link-new").attr("href", viewSrcFile(data.attachment));
                liClone.find(".name-new").html(`${textToIconFile(data.attachment)} Báo giá ${viewField(data.name)}`);
                return liClone;
            })
            listFileFooter.html(listLi);
        }
    }).catch(err => {
        console.log(err);
        alertDanger(DANGER_INFO_FOOTER);
    })
}
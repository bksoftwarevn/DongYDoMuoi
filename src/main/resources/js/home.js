$(document).ready(function () {
    $('.doctors-carousel').slick({
        slidesToShow: 3,
        dots: true,
        responsive: [
            {
                breakpoint: 992,
                settings: {
                    slidesToShow: 2
                }
            },
            {
                breakpoint: 576,
                settings: {
                    slidesToShow: 1
                }
            }
        ]
    });
    $('.customer-carousel').slick({
        slidesToShow: 3,
        dots: true,
        responsive: [
            {
                breakpoint: 992,
                settings: {
                    slidesToShow: 2
                }
            },
            {
                breakpoint: 576,
                settings: {
                    slidesToShow: 1
                }
            }
        ]
    });
});

function runSlickBannerMain() {
    $('#banner-main').slick({
        dots: true,
        infinite: true,
    });
}

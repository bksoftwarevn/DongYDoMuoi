$(document).ready(function () {
    $("#zoom_03").elevateZoom({
        zoomType: 'inner',
        cursor: 'crosshair',
        gallery: "gallery_01",
        cursor: "pointer",
        galleryActiveClass: "active",
        imageCrossfade: true,
        responsive: true,
        // loadingIcon: "http://www.elevateweb.co.uk/spinner.gif",
    });
    $("#gal1 a img").on('click', function(){
        $('.zoomContainer').remove();
        $("#zoom_03").removeData('elevateZoom');

        let src = $(this).attr('src');
        $("#zoom_03").attr({
            "src": src,
            "data-zoom-image": src,
        });
        $("#zoom_03").data('zoom-image', src);
        $("#zoom_03").elevateZoom({
            zoomType: 'inner',
            cursor: 'crosshair',
            gallery: "gallery_01",
            cursor: "pointer",
            galleryActiveClass: "active",
            imageCrossfade: true,
            responsive: true,
            // loadingIcon: "http://www.elevateweb.co.uk/spinner.gif",
        });
    })
    // $("input[type='number']").inputSpinner();
    $("#gal1").slick({
        slidesToShow: 4,
        slidesToScroll: 1,
        dots: false,
    });
});

function runProductRelatedCarousel() {
    $(".product-related-carousel").slick({
        slidesToShow: 4,
        slidesToScroll: 1,
        autoplay: true,
        responsive: [
            {
                breakpoint: 768,
                settings: {
                    slidesToShow: 2,
                },
            },
            {
                breakpoint: 992,
                settings: {
                    slidesToShow: 3,
                },
            },
        ],
    });
}
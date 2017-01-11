$(document).ready(function() {
    $('.slideshow').children().hide();
    $('.slideshow').children().first().show();
    setInterval(function() {
        $('.slideshow').children().first()
            .fadeOut(3000)
            .next('div')
            .fadeIn(2000)
            .end()
            .appendTo('.slideshow');
    }, 9000);
});
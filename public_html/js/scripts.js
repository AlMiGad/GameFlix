$(document).ready(function () {
    //MENU SCROLL
    $('.btn-nav').on('click', function (e) { //Smooth scrolling
        e.preventDefault();

        $('html, body').animate({
            scrollTop: $($(this).attr('href')).offset().top - 50
        }, 500, 'linear');
    });
    //MENU SCROLL
    $('.item-nov').on('click', function (e) { //Smooth scrolling
        e.preventDefault();
        $('.item-nov').removeClass("item-active");
        $('#yt-video').fadeOut(300);
        $('#yt-video').attr('src',"https://www.youtube.com/embed/"+$(this).attr('id'));
        $(this).addClass("item-active")
        $('#yt-video').fadeIn(300);
    });
    //WEB TICKER
    $('#webTicker').webTicker({duplicate: true, height: '40px'});
    //NAVBAR RESIZE
    var altura = $('.noticias').offset().top;
    $(window).on('scroll', function () {
        if ($(window).scrollTop() > altura) {
            $('.navbar').css("padding", "0px 0px");
        } else {
            $('.navbar').css("padding", "8px 0px");
        }
    });

});

//SLIDESHOW
var cabecera = 2;
var elemCabe = document.getElementById("cabeId");
elemCabe.style.backgroundImage = "url('img/cabecera1.jpg')";
setTimeout('cambiarCabecera()', 4000);
function cambiarCabecera() {
    if (cabecera == 1) {
        cabecera = 2;
        elemCabe.style.backgroundImage = "url('img/cabecera1.jpg')";
    } else if (cabecera == 2) {
        cabecera = 3;
        elemCabe.style.backgroundImage = "url('img/cabecera2.jpg')";
    } else {
        cabecera = 1;
        elemCabe.style.backgroundImage = "url('img/cabecera3.jpg')";
    }
    setTimeout('cambiarCabecera()', 4000);
}
    
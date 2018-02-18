$(document).ready(function () {
    //MENU SCROLL
    $('.btn-nav').on('click', function (e) { //Smooth scrolling
        e.preventDefault();

        $('html, body').animate({
            scrollTop: $($(this).attr('href')).offset().top - 50
        }, 500, 'linear');
    });
    //MENU ACCOUNT
    $('.menu-ac').on('click', function (e) { //Smooth scrolling
        e.preventDefault();
        $('.menu-ac').removeClass("gf-active");
        $(this).addClass("gf-active");
        $('.panel').hide();
        $($(this).data("target")).show();
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
    //ADD TO CART
    $('#addCart').on('click', function (e) { //Smooth scrolling
        e.preventDefault();
        alert("Se ha añadido al Carrito");
        $('#itms-nmbr').text("1");
    });
    //WEB TICKER
    $('#webTicker').webTicker({duplicate: true, height: '40px'});
    //SEARCH
    $('#btn-search').on('click', function (e) { //Smooth scrolling
        e.preventDefault();
        $('.panel-recomendados').fadeOut(500);
        $('.panel-resultados').fadeIn(1000);
    });
    //RATE
    $('#valorar').on('click', function (e) { //Smooth scrolling
        e.preventDefault();
        $('#valoracion').show();
    });
    $('#enviar-val').on('click', function (e) { //Smooth scrolling
        e.preventDefault();
        alert("Gracias por tus Comentarios");
        $('#valoracion').hide();
        $('#valorar').hide();
    });
    $('#cerrar-val').on('click', function (e) { //Smooth scrolling
        e.preventDefault();
        $('#valoracion').hide();
    });
    //NAVBAR RESIZE
    var altura;
    if($('.noticias').length == 0){
        altura = $('.cabecera-small').offset().top;
    }else{
        altura = $('.noticias').offset().top;
    }
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
    
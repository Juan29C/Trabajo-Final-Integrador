$(document).ready(function () {
    $.ajax({
        url: 'SvrMostrarNoticias',
        method: 'GET',
        success: function (data) {
            if (data.length > 0) {
                var noticiasHtml = '';
                var cont = 1;
                data.forEach(function (noticia) {
                    noticiasHtml += '<div class="noticia_img">';
                    noticiasHtml += '<img src="'+noticia.img_noticia+'" alt="imagen de la noticia" />';
                    noticiasHtml += '</div>';
                    noticiasHtml += '<div class="info_noticia">';
                    noticiasHtml += '<h3>'+ noticia.titulo+ '</h3>';
                    noticiasHtml += '<p>'+ noticia.contenido + '</p>';
                    noticiasHtml += '</div>';
                    cont++;
                });
                $('#caja_noticia').html(noticiasHtml);
            } else {
                $('#caja_noticia').html('<p>No hay noticias registrados.</p>');
            }
        },
        error: function () {
            $('#caja_noticia').html('<p>Error al cargar las noticias.</p>');
        }
    });
});


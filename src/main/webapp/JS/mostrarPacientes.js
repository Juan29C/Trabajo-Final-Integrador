$(document).ready(function () {
    $.ajax({
        url: 'SvrMapeoPacientes',
        method: 'GET',
        success: function (data) {
            if (data.length > 0) {
                var pacientesHtml = '';
                var cont = 1;
                data.forEach(function (paciente) {
                    pacientesHtml += '<div class="caja_solitario">';
                    pacientesHtml += '<div class="imgName_paciente">';
                    pacientesHtml += '<img src="'+paciente.img_paciente+'" alt="foto de paciente" />';
                    pacientesHtml += '<h3>' + paciente.nombre_paciente + " " + paciente.apellido_paciente + '</h3>';
                    pacientesHtml += '</div>';
                    pacientesHtml += '<div class="txt_ayuda">';
                    pacientesHtml += '<p>' + paciente.descripcion + '</p>';
                    pacientesHtml += '</div>';
                    pacientesHtml += '<div class="info_meta">';
                    pacientesHtml += '<div class="barra_progreso">';
                    pacientesHtml += '<progress max="100" value="35">35%</progress>';
                    pacientesHtml += '<span>35%</span>';
                    pacientesHtml += '</div>';
                    pacientesHtml += '<p class="meta_text">Meta: '+ paciente.monto_recaudar + '</p>';
                    pacientesHtml += '</div>';
                    pacientesHtml += '</div>';
                    cont++;
                });
                $('#pacientes').html(pacientesHtml);
            } else {
                $('#pacientes').html('<p>No hay pacientes registrados.</p>');
            }
        },
        error: function () {
            $('#pacientes').html('<p>Error al cargar los pacientes.</p>');
        }
    });
});


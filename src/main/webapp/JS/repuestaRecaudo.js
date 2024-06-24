document.addEventListener('DOMContentLoaded', function() {
    const preguntas = document.querySelectorAll('.pregunta');

    preguntas.forEach(function(pregunta) {
        pregunta.addEventListener('click', function() {
            const respuesta = this.nextElementSibling;
            const mas = this.querySelector('.mas');

            // Cerrar otras respuestas abiertas
            document.querySelectorAll('.respuesta').forEach(function(resp) {
                if (resp !== respuesta) {
                    resp.style.display = 'none';
                    resp.previousElementSibling.querySelector('.mas').textContent = '+';
                }
            });

            // Alternar la visibilidad de la respuesta actual
            if (respuesta.style.display === 'none' || respuesta.style.display === '') {
                respuesta.style.display = 'block';
                mas.textContent = '-';
            } else {
                respuesta.style.display = 'none';
                mas.textContent = '+';
            }
        });
    });
});

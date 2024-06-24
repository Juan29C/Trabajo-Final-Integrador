<%-- 
    Document   : registroUsuario_paciente
    Created on : 23 jun. 2024, 20:10:41
    Author     : DaniSSJ
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Registro de Paciente</title>
        <link rel="stylesheet" href="CSS/registroUsuario_paciente.css">
        <script src="JS/paciente.js"></script>
        <link rel="stylesheet" href="https://unicons.iconscout.com/release/v4.0.0/css/line.css">
    </head>
    <body>
        <div class="contenedor">
            <header>Paciente</header>

            <form action="SrvRegistrarUsuario_paciente" method="post">
                <input type="hidden" name="idUsuario" value="${idUsuario}">
                <div class="primer form">
                    <div class="detalles personales">
                        <span class="titulo">Detalles Personales</span>

                        <div class="campos">
                            <div class="entrada-campos">
                                <label>Nombre</label>
                                <input type="text" name="nombre_paciente" placeholder="Ingresa tu nombre" required>
                            </div>
                            <div class="entrada-campos">
                                <label>Apellido</label>
                                <input type="text" name="apellido_paciente" placeholder="Ingresa tu apellido" required>
                            </div>
                            <div class="entrada-campos">
                                <label>Edad</label>
                                <input type="text" name="edad" placeholder="Ingresa tu edad" required>
                            </div>
                            <div class="entrada-campos">
                                <label>Enfermedad</label>
                                <input type="text" name="enfermedad" placeholder="Ingresa la enfermedad" required>
                            </div>
                            <div class="entrada-campos">
                                <label>Monto a Recaudar</label>
                                <input type="number" name="monto_recaudar" placeholder="Ingresa el monto" required>
                            </div>
                            <div class="entrada-campos">
                                <label>Seleccione su país</label>
                                <select id="pais" name="pais" required>
                                    <option value="" disabled selected>Seleccione un país</option>
                                </select>
                            </div>
                            <div class="entrada-campos">
                                <label>Descripción</label>
                                <input type="text" name="descripcion" placeholder="Ingrese la descripción" required>
                            </div>
                            <div class="entrada-campos">
                                <label>Imagen del Paciente</label>
                                <input type="text" name="img_paciente" placeholder="Ingrese la imagen" required>
                            </div>
                            <div class="entrada-campos">
                                <label>Historia del Paciente</label>
                                <textarea name="historia_paciente" placeholder="Ingrese la historia del paciente" required></textarea>
                            </div>
                            <button class="siguientebtn">
                                <span class="btntexto">Siguiente</span>
                                <i class="uil uil-navigator"></i>
                            </button>
                        </div>
                    </div>
                </div>
            </form>
        </div>
    </body>
</html>

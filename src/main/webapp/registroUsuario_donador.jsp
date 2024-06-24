<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Registro de Donador</title>
        <link rel="stylesheet" href="CSS/registroUsuario_donador.css">
        <link rel="stylesheet" href="https://unicons.iconscout.com/release/v4.0.0/css/line.css">
    </head>
    <body>
        <div class="contenedor">
            <header>Donador</header>

            <form action="SrvRegistrarUsuario_donador" method="post">
                <input type="hidden" name="idUsuario" value="${idUsuario}">
                <div class="primer form">
                    <div class="detalles personales">
                        <span class="titulo">Detalles Personales</span>

                        <div class="campos">
                            <div class="entrada-campos">
                                <label>Dirección</label>
                                <input type="text" name="direccion" placeholder="Calle, Ciudad, País" required>
                            </div>
                            <div class="entrada-campos">
                                <label>Fecha de Registro</label>
                                <input type="date" name="fecha_registro" placeholder="Ingrese su fecha de registro" required>
                            </div>
                            <div class="entrada-campos">
                                <label>Teléfono</label>
                                <input type="text" name="telefono" placeholder="Ingrese su teléfono" required>
                            </div>
                            <div class="entrada-campos">
                                <label>DNI</label>
                                <input type="text" name="dni" placeholder="Ingrese su DNI" required>
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

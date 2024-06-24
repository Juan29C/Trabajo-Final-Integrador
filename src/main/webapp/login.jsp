<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <title>Iniciar Sesión</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="CSS/style1.css">
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css2?family=Canva+Sans:wght@400;700&display=swap" rel="stylesheet">
        <script src="https://www.google.com/recaptcha/api.js" async defer></script>
        <script src="JS/login.js"></script>
    </head>
    <body>
        <form id="login-form" method="post" action="SrvInicioSesion">
            <h1>Login</h1>
            <label for="correo">Correo Electrónico</label>
            <input type="email" id="correo" name="correo" required>
            <label for="contraseña">Contraseña</label>
            <input type="password" id="contrasena" name="contrasena" required>
            <a href="#" class="olvidar">Olvidé mi Contraseña</a>
            <div class="recaptcha">
                <div class="g-recaptcha" data-sitekey="6LffNdgpAAAAAGPeRqeGJg9FTsa7x6Afi0wxHOWe"></div>
            </div>
            <input type="submit" class="boton-iniciar" value="Iniciar Sesión" id="iniciarSesion" name="btnLogin">
            <a href="registroUsuario.jsp" class="registrese">No tiene cuenta, regístrese</a>
        </form>
    </body>
</html>



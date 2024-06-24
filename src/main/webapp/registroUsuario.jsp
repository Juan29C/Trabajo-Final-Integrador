<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="CSS/style2.css">
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css2?family=Canva+Sans:wght@400;700&display=swap" rel="stylesheet">
        <title>Registro</title>
        <link rel="icon" href="IMG/icono.png">
    </head>

    <body>
        <form method="POST" action="SrvRegistrarUsuario">
            <h1>Registrate</h1>

            <label for="nombre" >Nombres</label>
            <input type="text" name="nombre" id="nombre" required>
            
            <label for="apellido" >Apellidos</label>
            <input type="text" name="apellido" id="apellido" required>

            <label for="correo">Correo Electronico:</label>
            <input type="email" name="correo" id="correo" required>

            <label for="contrasena">Contraseña:</label>
            <input type="password" name="contrasena" id="contrasena" required>
            
            <label for="tipousuario">Tipo de Usuario:</label>
            <select id="tipo_usuario" name="tipo_usuario" required>
                <option value="Donante">Donante</option>
                <option value="Paciente">Paciente</option>
            </select>

            <button type="submit">Seguir con el registro!</button>

            <a href="login.jsp" class="logeo">Ya tiene cuenta, inicie sesion</a>

        </form>
    </body>
</html>

<%-- 
    Document   : equipo
    Created on : 6 jun. 2024, 09:46:42
    Author     : DaniSSJ
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css2?family=Lato:wght@400;700&display=swap" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css2?family=Lato:wght@900&family=Canva+Sans:wght@700&display=swap"
              rel="stylesheet">
        <link rel="stylesheet" href="CSS/equipo.css">
        <link rel="icon" href="IMG/icono.png">
        <title>Equipo</title>
    </head>

    <body>
        <header class="header_raiz">
            <div class="header_iz">
                <a href="index.jsp"><img class="img_logo1" src="IMG/LogoHeader.png" alt="Logo"></a>
            </div>
            <div class="header_de">
                <a href="login.jsp">
                    <i class="fas fa-sign-in-alt"></i> INICIAR SESIÓN
                </a>
                <a href="register.jsp">
                    <i class="fas fa-user-plus"></i> REGISTRARSE
                </a>
            </div>
        </header>

        <main>
            <section class="sec_1">
                <img class="img_portada" src="IMG/equipoPortada.png" alt="imagen_portada" />
                <nav class="nav_raiz">
                    <a href="index.jsp">Inicio</a>
                    <a href="nosotros.jsp">Nosotros</a>
                    <a href="donaciones.jsp">Donaciones</a>
                    <a href="equipo.jsp">Equipo</a>
                    <a href="contactanos.jsp">Contáctanos</a>
                </nav>
                <div class="contenedor-titulo">
                    <div class="titulo">
                        <h1>EL PROYECTO</h1>
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed eiusmod tempor incidunt ut labore et
                            dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut
                            aliquid ex ea commodi consequat. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed
                            eiusmod tempor incidunt ut labore et dolore magna aliqua.</p>
                    </div>
                </div>
            </section>


            <div class="caja_DEV">
                <div class="titulo-h2">
                    <h3>DESARROLLADORES</h3>
                </div>
                <div class="container">
                    <div style="text-align: center;">
                        <figure class="figura">
                            <img  class="foto" src="IMG/desarrolladores.png" alt="Image description" width="200" height="200">
                            <figcaption>DANIEL CARRASCO</figcaption>
                        </figure>

                        <figure class="figura">
                            <img  class="foto" src="IMG/desarrolladores.png" alt="" width="200" height="200">
                            <figcaption>JUAN CORALES</figcaption>
                        </figure>

                        <figure class="figura">
                            <img  class="foto" src="IMG/desarrolladores.png" alt="" width="200" height="200">
                            <figcaption>DEHYMAR TORRES</figcaption>
                        </figure>
                    </div>
                </div>
                <div class="titulo-h2">
                    <h3>CONTADOR</h3>
                </div>

                <div class="container">
                    <div style="text-align: center;">
                        <figure class="figura">
                            <img  class="foto" src="IMG/contador.png" alt="" width="200" height="200" class="imagen-contador">
                            <figcaption>RICHARD CRIBILLERO</figcaption>
                        </figure>
                    </div>
                </div>

                <div class="titulo-h2">
                    <h3>RECURSOS HUMANOS</h3>
                </div>
                <div class="container">
                    <div style="text-align: center;">
                        <figure class="figura" >
                            <img  class="foto" src="IMG/rrhh.png" alt="" width="200" height="200" class="imagen-rrhh">
                            <figcaption>FERNANDO CRIBILLERO</figcaption>
                        </figure>
                    </div>
                </div>
            </div>


            <footer>
                <div class="centered-button">
                    <h3>AGRADECEMOS A:</h3>
                </div>

                <div class="contenedor-grid">
                    <div>
                        <img src="IMG/BCP.webp" alt="BCP">
                    </div>
                    <div>
                        <img src="IMG/messi.webp" alt="Fundación Leo Messi">
                    </div>
                    <div>
                        <img src="IMG/save.webp" alt="Save the Children">
                    </div>
                    <div>
                        <img src="IMG/proyecto-Neymar.webp" alt="Instituto Projeto Neymar Jr">
                    </div>
                </div>

                <section class="fut">
                    <div class="iconos">
                        <div>
                            <a href="#">
                                <img src="IMG/facebook.webp" alt="">
                            </a>
                        </div>
                        <div>
                            <a href="#">
                                <img src="IMG/ig.webp" alt="">
                            </a>
                        </div>
                        <div>
                            <a href="#">
                                <img src="IMG/telefono.webp" alt="">
                            </a>
                        </div>
                        <div>
                            <a href="#"><img src="IMG/twiter.webp" alt=""></a>
                        </div>
                        <div>
                            <a href="#"><img src="IMG/youtube.webp" alt=""></i></a>
                        </div>
                    </div>

                    <div class="pie_imagen">
                        <img class="img_logo1" src="IMG/logo-pie.png" alt="Logo">
                    </div>
                    <div class="boton_fut">
                        <p>¡AYÚDANOS A AYUDAR YA MISMO!</p>
                    </div>
                    <div class="contenedor_iz">
                        <div class="iz_1">
                            <h3>Ponte en contacto con nosotros</h3>
                        </div>

                        <div  class="iz_2">
                            <p>info.airfunding@kiheitai.co.jp</p>
                        </div>

                    </div>

                    <div class="cont_final">
                        <label>TODOS LOS DERECHOS RESERVADOS "EL ÚLTIMO ALIENTO"</label>
                    </div>
                </section>
            </footer>

        </main>
    </body>
</html>

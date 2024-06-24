<%-- 
    Document   : nosotros
    Created on : 6 jun. 2024, 09:48:57
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
        <title>Nosotros</title>
        <link rel="stylesheet" href="CSS/nosotros.css">
        <link rel="icon" href="IMG/icono.png">

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
                <div class="cont_img_portada">
                    <img class="img_portada" src="IMG/img_Nosotros_2.jpg" alt="imagen_portada" />
                </div>
                <nav class="nav_raiz">
                    <a href="index.jsp">Inicio</a>
                    <a href="nosotros.jsp">Nosotros</a>
                    <a href="donaciones.jsp">Donaciones</a>
                    <a href="equipo.jsp">Equipo</a>
                    <a href="contactanos.jsp">Contáctanos</a>
                </nav>
                <div class="contenido_portada">
                    <div class="titu_portada">
                        <p>¿Quienes Somos?</p>
                    </div>
                </div>
            </section>


            <div class="contenedor1">
                <div class="parte11">
                    <div class="img-container">
                        <img src="IMG/paciente11.webp" alt="Misión">
                        <div class="texto texto1">
                            <h2>Misión</h2>
                            <p class="parrafoP">Nuestra misión es brindar un espacio seguro y de apoyo donde las personas puedan reunirse
                                para recaudar fondos, ofrecer apoyo emocional y compartir historias inspiradoras para
                                personas que enfrentan enfermedades terminales</p>
                        </div>
                    </div>
                </div>
                <div class="parte12">
                    <div class="img-container">
                        <img src="IMG/paciente12.webp" alt="Visión">
                        <div class="texto texto2">
                            <h2>Visión</h2>
                            <p class="parrafoP">Nuestra visión es crear un mundo donde cada paciente terminal y su familia reciban el apoyo
                                que necesitan para enfrentar los desafíos médicos y emocionales con dignidad, esperanza y
                                compasión.</p>
                        </div>
                    </div>
                </div>
            </div>

            <div class="contenedor2">
                <div class="parte21">
                    <div class="img-container">
                        <img src="IMG/paciente21.webp" alt="Valores">
                        <div class="texto texto3">
                            <h2>Valores</h2>
                            <ul class="parrafoP">
                                <li>Solidaridad</li>
                                <li>Empatía</li>
                                <li>Transparencia</li>
                                <li>Compasión</li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="parte22">
                    <div class="img-container">
                        <img src="IMG/paciente22.webp" alt="Organización">
                        <div class="texto texto4">
                            <h2>Organización</h2>
                            <p class="parrafoP">“El último aliento” tiene como objetivo ofrecer esperanza, dignidad y alivio a los más
                                vulnerables, demostrando que incluso en los momentos más oscuros, la luz de la compasión y la
                                solidaridad puede brillar intensamente.</p>
                        </div>
                    </div>
                </div>
            </div>

            <section class="contenedor_numeros">

                <div>
                    <label id="num">2000</label>
                    <p>soles recaudados</p>
                </div>

                <div>
                    <label id="num">1000</label>
                    <p>personas registradas</p>
                </div>

                <div>
                    <label id="num">2000</label>
                    <p>N° de donaciones</p>
                </div>

            </section>


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

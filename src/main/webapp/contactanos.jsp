
<%@page import="logica.Usuario"%>
<%@page import="javax.servlet.http.HttpSession"%>

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
        <link rel="stylesheet" href="CSS/contactanos.css">
        <link rel="icon" href="IMG/icono.png">
        <title>Contáctanos</title>
    </head>
    <body>
       <header class="header_raiz">
            <div class="header_iz">
                <a href="index.jsp"><img class="img_logo1" src="IMG/LogoHeader.png" alt="Logo"></a>
            </div>
            <div class="header_de">
                <%
                    HttpSession mySession = request.getSession(false);
                    Usuario usuario = null;
                    if (mySession != null) {
                        usuario = (Usuario) mySession.getAttribute("usuario");
                    }
                    if (usuario != null) {
                %>
                    <a href="#">
                        <i class="fas fa-user"></i> Hola, <%= usuario.getNombre() %>
                    </a>
                    <a href="SrvLogout">
                        <i class="fas fa-sign-out-alt"></i> Cerrar Sesión
                    </a>
                <% } else { %>
                    <a href="login.jsp">
                        <i class="fas fa-sign-in-alt"></i> INICIAR SESIÓN
                    </a>
                    <a href="register.jsp">
                        <i class="fas fa-user-plus"></i> REGISTRARSE
                    </a>
                <% } %>
            </div>
        </header>

        <main>
            <section class="sec_1">
                <img class="img_portada" src="IMG/fondocont.png" alt="imagen_portada" />
                <nav class="nav_raiz">
                    <a href="index.jsp">Inicio</a>
                    <a href="nosotros.jsp">Nosotros</a>
                    <a href="donaciones.jsp">Donaciones</a>
                    <a href="equipo.jsp">Equipo</a>
                    <a href="contactanos.jsp">Contáctanos</a>
                </nav>
                <div class="contenido_portada">
                    <div class="titu_portada">
                        <label>Juntos podemos aliviar el dolor y sembrar esperanza.</label>
                    </div>
                </div>
                <div class="contenedor-titulo">
                    <div class="titulo">
                        <h1>CONTÁCTANOS</h1>
                        <form id="contactForm" action="SrvContactanos" class="formulario" method="POST">
                            <div class="primera-caja">
                                <div class="caja_nombre">
                                    <label for="nombre">Nombre</label>
                                    <input type="text" id="nombre" name="nombre"  required>
                                </div>
                                <div class="espacio">
                                </div>
                                <div class="caja_apellido">
                                    <label for="apellido">Apellido</label>
                                    <input type="text" id="apellido" name="apellido"  required>
                                </div>
                            </div>

                            <div class="segunda-caja">
                                <div class="caja_email">
                                    <label for="email">Email</label>
                                    <input type="email" id="email" name="email"  required>
                                </div>
                                <div class="espacio">
                                </div>
                            </div>

                            <div class="tercera-caja">
                                <label for="mensaje">Mensaje</label>
                                <textarea id="mensaje" name="mensaje" 
                                          required></textarea>
                            </div>
                            
                            <button type="submit">ENVIAR</button>
                        </form>
                    </div>
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

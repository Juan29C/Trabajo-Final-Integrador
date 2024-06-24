<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="javax.servlet.http.HttpSession"%>
<%@page import="logica.Usuario"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css2?family=Lato:wght@400;700&display=swap" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css2?family=Lato:wght@900&family=Canva+Sans:wght@700&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="CSS/index.css">
        <link rel="icon" href="IMG/icono.png">
        <title>Inicio</title>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
        <script src="JS/mostrarPacientes.js"></script>
        <script src="JS/mostrarNoticias.js"></script>
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
                <img class="img_portada" src="IMG/portada.png" alt="imagen_portada" />
                <nav class="nav_raiz">
                    <a href="index.jsp">Inicio</a>
                    <a href="nosotros.jsp">Nosotros</a>
                    <a href="donaciones.jsp">Donaciones</a>
                    <a href="equipo.jsp">Equipo</a>
                    <a href="contactanos.jsp">Contáctanos</a>
                </nav>
                <div class="contenido_portada">
                    <div class="titu_portada">
                        <label>Tu solidaridad es un abrazo cálido en el frío del sufrimiento</label>
                    </div>
                    <div class="btn_ayuda">
                        <a href="register.jsp">¡AYÚDANOS A AYUDAR AHORA MISMO!</a>
                    </div>
                </div>
            </section>

            <section class="sec_2">
                <label class="titu_personas"> PACIENTES </label>
                <div class="caja_personas" id="pacientes">
                    <!-- Aquí se cargan los pacientes de nuestra BD -->
                </div>
                <div class="caja_boton">
                    <a href="donaciones.jsp">VER MÁS</a>
                </div>
            </section>

            <section class="sec_2">
                <div class="caja_noticia" id="caja_noticia">
                    <!-- Aquí se cargan los pacientes de nuestra BD -->
                </div>
            </section>

            <section class="sec_3">
                <div class="caja_pasos">
                    <div class="titu_s3">
                        <hr class="linea-punteada">
                        <h3 class="titu_pasos">¿Listo para encontrar fuerza y apoyo en tu viaje?</h3>
                    </div>
                    <div class="pasos">
                        <div class="paso paso1">
                            <h2>PASO 1</h2>
                            <h3>Crea tu solicitud</h3>
                            <p>Puedes comenzar a recaudar fondos en solo unos minutos</p>
                        </div>
                        <div class="paso paso2">
                            <h2>PASO 2</h2>
                            <h3>Comienza a recaudar</h3>
                            <p>Comparte tu solicitud muy fácilmente para comenzar a reunir fondos</p>
                        </div>
                        <div class="paso paso3">
                            <h2>PASO 3</h2>
                            <h3>Verifica tu cuenta</h3>
                            <p>Verifica tu identidad y cartera en unos pocos pasos</p>
                        </div>
                        <div class="paso paso4">
                            <h2>PASO 4</h2>
                            <h3>Recibe fondos en tiempo real</h3>
                            <p>Recibe los fondos que reúnas en tu cartera en tiempo real</p>
                        </div>
                    </div>
                    <div class="linea">
                        <hr class="linea-punteada2">
                    </div>
                </div>
                <button class="btn_unirte"><a href="register.jsp" style="text-decoration: none; color: white;">Únete a
                        nuestra comunidad</a></button>
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
                            <a href="#"><img src="IMG/youtube.webp" alt=""></a>
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
                        <div class="iz_2">
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

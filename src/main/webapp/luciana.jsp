<%-- 
    Document   : luciana
    Created on : 6 jun. 2024, 09:48:21
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
        <title>Caso</title>
        <link rel="stylesheet" href="CSS/luciana.css">
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


        <section class="sec_1">

            <nav class="nav_raiz">
                <a href="index.jsp">Inicio</a>
                <a href="nosotros.jsp">Nosotros</a>
                <a href="donaciones.jsp">Donaciones</a>
                <a href="equipo.jsp">Equipo</a>
                <a href="contactanos.jsp">Contáctanos</a>
            </nav>
        </section>

        <section class="sec_paciente">
            <div class="contenedor">
                <div class="historia_paciente">
                    <img src="IMG/paciente.png" alt="foto de Luciana García" />
                    <div class="texto_historia">
                        <h2>MI HISTORIA</h2>
                        <p>Luciana es una niña valiente de 8 años que ha estado luchando contra el cáncer con una sonrisa en
                            su rostro y un espíritu indomable. Su historia comienza con el amor incondicional de su familia
                            y el apoyo constante de sus amigos y comunidad.</p>
                        <p>A pesar de los desafíos que enfrenta, Luciana encuentra fuerza en las pequeñas cosas de la vida:
                            los cuentos que su abuela le cuenta cada noche antes de dormir, los dibujos coloridos que hace
                            para decorar su habitación de hospital y las visitas sorpresa de su perro, quien se convirtió en
                            su fiel compañero de batalla.</p>
                        <p>Los médicos y enfermeras se convierten en héroes para Luciana, cada uno de ellos una pieza clave
                            en su camino hacia la recuperación. A medida que pasa por tratamientos dolorosos y momentos
                            difíciles, siempre mantiene la esperanza y el deseo de un futuro brillante.</p>
                        <p>Luciana ha enseñado a todos a su alrededor el verdadero significado de la valentía y la
                            resistencia. Su historia es un recordatorio poderoso de que el amor, la determinación y la
                            esperanza pueden iluminar incluso los días más oscuros.</p>
                        <p>Hoy, Luciana sigue enfrentando su enfermedad con coraje, inspirando a todos los que la rodean con
                            su increíble fuerza y ​​su contagiosa sonrisa.</p>
                    </div>
                </div>
                <div class="donaciones_meta">
                    <h3>Cantidad recaudada</h3>
                    <p>S/ 100</p>
                    <div class="barra_progreso">
                        <progress max="1500" value="100">7%</progress>
                        <span>7%</span>
                    </div>
                    <p>Objetivo: S/1500</p>
                    <p>Fecha publicación: 19/04/2023</p>
                    <button class="btn_donar">DONAR</button>

                    <div class="titu_pagos">
                        <p>Puedes utilizar diversos métodos de pago</p>
                    </div>
                    <div class="metodos_pago">
                        <div class="imgpagos">
                            <img src="IMG_DONACIONES/visa.png" alt="Visa" />
                            <img src="IMG_DONACIONES/mastercard.png" alt="MasterCard" />
                            <img src="IMG_DONACIONES/yape.png" alt="MasterCard" />
                            <img src="IMG_DONACIONES/plin.png" alt="MasterCard" />
                        </div>

                    </div>
                    <div class="compartir">
                        <button class="btn_compartir">COMPARTIR</button>
                    </div>
                    <div class="numero_donaciones">
                        <div class="donador-info">
                            <img src="IMG_DONACIONES/donador.webp" alt="">

                        </div>
                        <div class="donacion-info">
                            <h3>Número de donaciones: </h3>
                            <div class="donacion">
                                <p><strong>Anónimo</strong></p>
                                <p>Cantidad donada: S/50</p>
                                <p>Toda mi solidaridad para ti y tu familia, espero que encuentren fuerza en su lucha.</p>
                            </div>
                        </div>

                    </div>
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

                    <div class="iz_2">
                        <p>info.airfunding@kiheitai.co.jp</p>
                    </div>

                </div>

                <div class="cont_final">
                    <label>TODOS LOS DERECHOS RESERVADOS "EL ÚLTIMO ALIENTO"</label>
                </div>
            </section>
        </footer>


    </body>
</html>

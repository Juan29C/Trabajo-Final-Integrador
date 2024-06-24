<%-- 
    Document   : luciana
    Created on : 6 jun. 2024, 09:48:21
    Author     : DaniSSJ
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Lato:wght@400;700&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Lato:wght@900&family=Canva+Sans:wght@700&display=swap" rel="stylesheet">
    <title>Caso</title>
    <link rel="stylesheet" href="CSS/luciana.css">
    <script>
        function getParameterByName(name) {
            name = name.replace(/[\[]/, '\\[').replace(/[\]]/, '\\]');
            var regex = new RegExp('[\\?&]' + name + '=([^&#]*)');
            var results = regex.exec(location.search);
            return results === null ? '' : decodeURIComponent(results[1].replace(/\+/g, ' '));
        }
    </script>
</head>

<body>
<%
    String nombrePaciente = request.getParameter("nombre");
    String historiaPaciente = "";
    String imgPaciente = "";
    String fecha = "";
    double montoRecaudado = 0.0;
    double total = 0.0;
    int porcentajeRecaudado = 0;

    if (nombrePaciente != null && !nombrePaciente.isEmpty()) {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/ultimoalientodb1", "root", "");
            String query = "SELECT historia_paciente, img_paciente, monto_recaudado, fecha, monto_recaudar FROM paciente WHERE nombre_paciente = ?";
            PreparedStatement ps = conn.prepareStatement(query);
            ps.setString(1, nombrePaciente);
            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                historiaPaciente = rs.getString("historia_paciente");
                imgPaciente = rs.getString("img_paciente");
                montoRecaudado = rs.getDouble("monto_recaudado");
                fecha = rs.getString("fecha");
                total = rs.getDouble("monto_recaudar");
                if (total > 0) {
                    porcentajeRecaudado = (int) ((montoRecaudado / total) * 100);
                }
            }

            rs.close();
            ps.close();
            conn.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
%>

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
                <img src="<%= imgPaciente %>" alt="foto de <%= nombrePaciente %>" />
                <div class="texto_historia">
                    <h2>MI HISTORIA: <%= nombrePaciente %></h2>
                    <p><%= historiaPaciente %></p>
                </div>
            </div>
            <div class="donaciones_meta">
                <h3>Cantidad recaudada</h3>
                <p>S/ <%= montoRecaudado %></p>
                <div class="barra_progreso">
                    <progress max="<%= total %>" value="<%= montoRecaudado %>"></progress>
                    <span><%= porcentajeRecaudado %> %</span>
                </div>
                <p>Objetivo: S/<%= total %></p>
                <p>Fecha publicación: <%= fecha %></p>
                <button class="btn_donar">DONAR</button>

                <div class="titu_pagos">
                    <p>Puedes utilizar diversos métodos de pago</p>
                </div>
                <div class="metodos_pago">
                    <div class="imgpagos">
                        <img src="IMG_DONACIONES/visa.png" alt="Visa" />
                        <img src="IMG_DONACIONES/mastercard.png" alt="MasterCard" />
                        <img src="IMG_DONACIONES/yape.png" alt="Yape" />
                        <img src="IMG_DONACIONES/plin.png" alt="Plin" />
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
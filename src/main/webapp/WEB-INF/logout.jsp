<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="javax.servlet.http.HttpSession"%>
<%
    HttpSession mySession = request.getSession(false);
    if (session != null) {
        session.invalidate();
    }
    response.sendRedirect("index.jsp");
%>

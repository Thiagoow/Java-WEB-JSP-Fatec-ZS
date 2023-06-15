<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    // REDIRECIONA PARA A PAG LOGIN.JSP
    String url = "gamestore/auth/login.jsp";
    response.sendRedirect(url);
%>
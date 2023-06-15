<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="gamestore.model.bean.Games"%>
<%@page import="gamestore.controller.ControllerGames"%>

<%
    String cod = request.getParameter("ID");
    int id = Integer.parseInt(cod);
    Games ins = new Games(id);
    ControllerGames insCont = new ControllerGames();
    ins = insCont.excluir(ins);
    String pbusca = request.getParameter("PBUSCA");
    
    // REDIRECIONA PARA A PAG LOGIN.JSP
    String url = "validaConsultarGames.jsp?LOGIN=" + pbusca;
    response.sendRedirect(url);
%>
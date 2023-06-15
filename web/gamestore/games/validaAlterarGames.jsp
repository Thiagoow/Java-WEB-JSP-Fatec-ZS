<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="gamestore.model.bean.Games"%>
<%@page import="gamestore.controller.ControllerGames"%>

<%
    String cod = request.getParameter("ID");
    int id = Integer.parseInt(cod);
    String nome = request.getParameter("NOME");
    double valor = Double.parseDouble(request.getParameter("VALOR"));
    String tipo = request.getParameter("TIPO");
    String pbusca = request.getParameter("PBUSCA");

    Games ins = new Games(id,nome,valor,tipo);
    ControllerGames usuCont = new ControllerGames();
    ins = usuCont.alterar(ins);
    // REDIRECIONA PARA A PAG LOGIN.JSP
    String url = "validaConsultarGames.jsp?LOGIN=" + pbusca;
    response.sendRedirect(url);
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="gamestore.model.bean.Purchases"%>
<%@page import="gamestore.controller.PurchasesController"%>

<%
    int id_clients = Integer.parseInt(request.getParameter("ID_CLIENTS"));
    int id_games = Integer.parseInt(request.getParameter("ID_GAMES"));
    double total_value = Double.parseDouble(request.getParameter("VALORTOTAL"));
    String clients_name = request.getParameter("NOMECLIENTES");
    Compras comp = new Purchases(total_value, id_games, id_clients, clients_name);
    PurchasesController compcont = new PurchasesController();
    comp = compcont.inserir(comp);
    // REDIRECIONA PARA A PAG LOGIN.JSP
    String url = "inserirRelacaoCompras.jsp";
    response.sendRedirect(url);
%>

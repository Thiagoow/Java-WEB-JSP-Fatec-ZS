<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="gamestore.model.bean.Clients"%>
<%@page import="gamestore.controller.ClientsController"%>
<%@page import="gamestore.model.bean.Games"%>
<%@page import="gamestore.controller.GamesController"%>
<%@page import="gamestore.model.bean.Purchases"%>
<%@page import="gamestore.controller.PurchasesController"%>

<%
    String cod = request.getParameter("ID");
    int id = Integer.parseInt(cod);
    int id_clients = Integer.parseInt(request.getParameter("ID_CLIENTS"));
    int id_games = Integer.parseInt(request.getParameter("ID_GAMES"));
    double total_value = Double.parseDouble(request.getParameter("VALORTOTAL"));
    String clients_name = request.getParameter("NOMECLIENTES");

    Purchases comp = new Purchases(id, total_value, id_clients, id_games, clients_name);
    PurchasesController compcont = new PurchasesController();
    comp = compcont.update(comp);

    // REDIRECIONA PARA A PAG LOGIN.JSP
    String url = "validaConsultarRelacaoCompras.jsp?NOMECLIENTES=" + clients_name;
    response.sendRedirect(url);
%>

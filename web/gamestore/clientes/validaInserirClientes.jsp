<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="gamestore.model.bean.Clients"%>
<%@page import="gamestore.controller.ClientsController"%>

<%
    String cpf = request.getParameter("CPF");
    String nome = request.getParameter("NOME");
    String email = request.getParameter("EMAIL");

    Clients cli = new Clients(nome, cpf, email);
    ClientsController pescont = new ClientsController();
    cli = pescont.inserir(cli);

    // REDIRECIONA PARA A PAG LOGIN.JSP
    String url = "inserirClients.jsp";
    response.sendRedirect(url);
%>

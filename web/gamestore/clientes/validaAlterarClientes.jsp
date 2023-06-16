<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="gamestore.model.bean.Clients"%>
<%@page import="gamestore.controller.ClientsController"%>

<%
    String cod = request.getParameter("ID");
    int id = Integer.parseInt(cod);

    String cpf = request.getParameter("CPF");
    String nome = request.getParameter("NOME");
    String email = request.getParameter("EMAIL");
    String pbusca = request.getParameter("PBUSCA");

    Clients cli = new Clients(id, nome, cpf, email);
    ClientsController cliCont = new ClientsController();
    cli = cliCont.update(cli);

    // REDIRECIONA PARA A PAG LOGIN.JSP
    String url = "validaConsultarClientes.jsp?NOME=" + pbusca;
    response.sendRedirect(url);
%>

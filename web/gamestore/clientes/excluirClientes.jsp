<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="gamestore.model.bean.Clients"%>
<%@page import="gamestore.controller.ClientsController"%>

<%
    String cod = request.getParameter("ID");
    int id = Integer.parseInt(cod);

    Clients cli = new Clients(id);
    ClientsController cliCont = new ClientsController();
    cli = cliCont.excluir(cli);

    String pbusca = request.getParameter("PBUSCA");

    // REDIRECIONA PARA A PAG LOGIN.JSP
    String url = "validaConsultarClientes.jsp?NOME=" + pbusca;
    response.sendRedirect(url);
%>

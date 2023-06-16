<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="gamestore.model.bean.Clientes"%>
<%@page import="gamestore.controller.ClientsController"%>

<%
    String cod = request.getParameter("ID");
    int id = Integer.parseInt(cod);
    Clients cli = new Clientes(id);
    ControllerClients pesCont = new ClientsController();
    cli = pesCont.buscar(cli);
    String pbusca = request.getParameter("PBUSCA");
%>

<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <title>ALTERAR - CLIENTES</title>
    <body>
       <div class="container"/>
       <h1>ALTERAR CLIENTES</h1>
        <form name="alterarClientes" action="validaAlterarClientes.jsp" method="post">
            Cpf: <input type="text" name="CPF" value="<%=cli.getCpf()%>"> <br>
            Nome: <input type="text" name="USERNAME" value="<%=cli.getName()%>"> <br>
            Email: <input type="text" name="EMAIL" value="<%=cli.getEmail()%>"> <br>
            <input type="HIDDEN" name="ID" value="<%=cli.getId()%>"> <br>
            <input type="HIDDEN" name="PBUSCA" value="<%=pbusca%>"> <br>
            <input type="submit" name="Enviar" value="OK">
        </form>
        <div>
    </body>
</html>
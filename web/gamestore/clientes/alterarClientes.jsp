<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="gamestore.model.bean.Clientes"%>
<%@page import="gamestore.controller.ControllerClientes"%>

<%
    String cod = request.getParameter("ID");
    int id = Integer.parseInt(cod);
    Clientes cli = new Clientes(id);
    ControllerClientes pesCont = new ControllerClientes();
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
            Nome: <input type="text" name="NOME" value="<%=cli.getNome()%>"> <br>
            Produto: <input type="text" name="PRODUTO" value="<%=cli.getProduto()%>"> <br>
            Email: <input type="text" name="EMAIL" value="<%=cli.getEmail()%>"> <br>
            <input type="HIDDEN" name="ID" value="<%=cli.getId()%>"> <br>
            <input type="HIDDEN" name="PBUSCA" value="<%=pbusca%>"> <br>
            <input type="submit" name="Enviar" value="OK">
        </form>
        <div>
    </body>
</html>
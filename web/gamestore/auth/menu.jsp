<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="gamestore.model.bean.Clients"%>
<%@page import="gamestore.controller.ClientsController"%>

<%
    String login = request.getParameter("LOGIN");
    String senha = request.getParameter("SENHA");

    Clients usuEntrada = new Cliente(login, senha);
    ClientsController usucont = new ClientsController();
    Clients usuSaida = usucont.validateWeb(usuEntrada);

    session.setAttribute("ClientLogged", usuSaida);
%>

<!DOCTYPE html>
<html>
<%@include file="../../inc/materalizeWeb.inc" %>
<title>SISTEMA</title>

<body>
    <% if (usuSaida != null) { %>
    <!-- Dropdown1 Trigger -->
    <a class="dropdown-button btn" data-beloworigin="true" href="#" data-activates="dropdown1">Manter Clientes</a>
    <a class="dropdown-button btn" data-beloworigin="true" href="#" data-activates="dropdown2">Manter Compras</a>
    <a class="dropdown-button btn" data-beloworigin="true" href="#" data-activates="dropdown3">Manter Games</a>

    <% if (usuSaida.getType().equals("ADM")) { %>
    <!-- Dropdown1 Structure -->
    <ul id="dropdown1" class="dropdown-content">
        <li><a href="../Clients/inserirClientes.jsp"> InserirClientes</a></li>
        <li><a href="../Clients/consultarClientes.jsp"> ConsultarClientes</a></li>
    </ul>
    <% } else { %>
    <ul id="dropdown1" class="dropdown-content">
        <li><a href="../Clients/consultarClientes.jsp"> ConsultarClientes</a></li>
    </ul>
    <% } %>

    <% if (usuSaida.getType().equals("ADM")) { %>
    <!-- Dropdown2 Structure -->
    <ul id="dropdown3" class="dropdown-content">
        <li><a href="../compras/inserirRelacaoCompras.jsp"> InserirCompras</a></li>
        <li><a href="../compras/consultarRelacaoCompras.jsp"> ConsultarCompras</a></li>
    </ul>
    <% } else { %>
    <ul id="dropdown3" class="dropdown-content">
        <li><a href="../compras/consultarCompras.jsp"> ConsultarCompras</a></li>
    </ul>
    <% } %>

    <!-- Dropdown3 Games -->
    <% if (usuSaida.getType().equals("ADM")) { %>
    <!-- Dropdown3 Structure -->
    <ul id="dropdown4" class="dropdown-content">
        <li><a href="../games/inserirGames.jsp"> InserirGames</a></li>
        <li><a href="../games/consultarGames.jsp"> ConsultarGames</a></li>
    </ul>
    <% } else { %>
    <ul id="dropdown4" class="dropdown-content">
        <li><a href="../instrumentos/consultarGames.jsp"> ConsultarGames</a></li>
    </ul>
    <% } %>

    <% } else { %>
    <h1>USUÁRIO INVÁLIDO</h1>
    <% } %>
</body>

</html>

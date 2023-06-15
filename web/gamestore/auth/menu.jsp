<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="gamestore.model.bean.Cliente"%>
<%@page import="gamestore.controller.ControllerCliente"%>

<%
    String login = request.getParameter("LOGIN");
    String senha = request.getParameter("SENHA");
    Cliente usuEntrada = new Cliente(login,senha);
    ControllerCliente usucont = new ControllerCliente();
    Cliente usuSaida = usucont.validarWeb(usuEntrada);
    session.setAttribute("UsuarioLogado",usuSaida);
%>

<!DOCTYPE html>
<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <title>SISTEMA </title>
    <body>
        <% if (usuSaida != null) { %>
            <!-- Dropdown1 Trigger -->   
            <a class='dropdown-button btn' data-beloworigin="true" href='#' data-activates='dropdown1'>Manter Clientes</a>        
            <a class='dropdown-button btn' data-beloworigin="true" href='#' data-activates='dropdown2'>Manter Compras</a>        
            <a class='dropdown-button btn' data-beloworigin="true" href='#' data-activates='dropdown3'>Manter Games</a>
            
            <% if (usuSaida.getTipo().equals("ADM")) { %>
                <!-- Dropdown1 Structure -->
                <ul id='dropdown1' class='dropdown-content'>
                    <li><a href="../Clients/inserirClientes.jsp"> InseriClientes</a></li>
                    <li><a href="../Clients/consultarClientes.jsp"> ConsultarClientes </a></li>
                </ul>
            <% } else { %>
                <ul id='dropdown1' class='dropdown-content'>
                    <li><a href="../Clients/consultarClientes.jsp"> ConsultarClientes</a></li>
                </ul>
            <% } %>
            <% if (usuSaida.getTipo().equals("ADM")) { %>
                <!-- Dropdown2 Structure -->
                <ul id='dropdown3' class='dropdown-content'>
                    <li><a href="../compras/inserirRelacaoCompras.jsp"> InserirCompras </a></li>
                    <li><a href="../compras/consultarRelacaoCompras.jsp"> ConsultarCompras </a></li>
                </ul>
            <% } else { %>
                <ul id='dropdown3' class='dropdown-content'>
                    <li><a href="../compras/consultarCompras.jsp"> ConsultarCompras </a></li>
                </ul>
            <% } %>
            
            <!-- Dropdown3 Games-->
            <% if (usuSaida.getTipo().equals("ADM")) { %>
                <!-- Dropdown3 Structure -->
                <ul id='dropdown4' class='dropdown-content'>
                    <li><a href="../games/inserirGames.jsp"> InserirGames </a></li>
                    <li><a href="../games/consultarGames.jsp"> ConsultarGames</a></li>
                </ul>
            <% } else { %>
                <ul id='dropdown4' class='dropdown-content'>
                    <li><a href="../instrumentos/consultarGames.jsp"> ConsultarGames </a></li>
                </ul>
            <% } %>

            <% } else { %>
                <h1>USUÁRIO INVÁLIDO</h1>
        <% } %>
    </body>
</html>
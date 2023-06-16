<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="gamestore.model.bean.Clients"%>
<%@page import="gamestore.controller.ClientsController"%>

<%
    String nome = request.getParameter("NOME");
    Clients cli = new Clients(nome);
    ClientsController clicont = new ClientsController();
    List<Clients> clie = clicont.list(cli);
    Clients usuLogado = (Clients) session.getAttribute("ClientLogged");
    String url = "PBUSCA=" + nome + "&ID=";
%>

<html>
<%@include file="../../inc/materalizeWeb.inc" %>
<title>LISTA CLIENTES</title>

<body>
    <table class="striped responsive-table">
        <thead>
            <tr>
                <th data-field="Id">Id</th>
                <th data-field="Cpf">Cpf</th>
                <th data-field="Nome">Nome</th>
                <th data-field="Email">Email</th>
                <th data-field="Excluir">Excluir</th>
                <th data-field="Alterar">Alterar</th>
            </tr>
        </thead>
        <% if (!(clie.isEmpty())) { %>
        <tbody>
            <% for (Clients listaClients : clie) { %>
            <tr>
                <td><%=listaClients.getId()%></td>
                <td><%=listaClients.getCpf()%></td>
                <td><%=listaClients.getUsername()%></td>
                <td><%=listaClients.getEmail()%></td>
                <% if (usuLogado.getTipo().equals("ADM")) { %>
                <td>
                    <a href="excluirClientes.jsp?<%=url + listaClients.getId()%>">Excluir</a>
                </td>
                <td>
                    <a href="alterarClientes.jsp?<%=url + listaClients.getId()%>">Alterar</a>
                </td>
                <% } %>
            </tr>
            <% } %>
        </tbody>
        <% } %>
    </table>
</body>

</html>

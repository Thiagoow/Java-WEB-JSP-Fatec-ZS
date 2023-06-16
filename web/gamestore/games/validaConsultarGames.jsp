<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="gamestore.model.bean.Clients"%>
<%@page import="gamestore.model.bean.Games"%>
<%@page import="gamestore.controller.GamesController"%>

<%
    String nome = request.getParameter("NOME");
    Games cli = new Games(nome);
    GamesController gmsCont = new GamesController();
    List<Games> inst = gmsCont.list(cli);
    Clients usuLogado = (Clients) session.getAttribute("ClientLogged");
    String url = "PBUSCA=" + nome + "&ID=";
%>

<html>
<%@include file="../../inc/materalizeWeb.inc" %>
<title>LISTA GAMES</title>

<body>
    <table class="striped responsive-table">
        <thead>
            <tr>
                <th data-field="Id">Id</th>
                <th data-field="Nome">Nome</th>
                <th data-field="Valor">Valor</th>
                <th data-field="Tipo">Tipo</th>
                <th data-field="Excluir">Excluir</th>
                <th data-field="Alterar">Alterar</th>
            </tr>
        </thead>

        <% if (!(inst.isEmpty())) { %>
        <tbody>
            <% for (Games listGames : inst) { %>
            <tr>
                <td><%=listGames.getId()%></td>
                <td><%=listGames.getName()%></td>
                <td><%=listGames.getValue()%></td>
                <td><%=listGames.getType()%></td>

                <% if (usuLogado.getType().equals("ADM")) { %>
                <td>
                    <a href="excluirGames.jsp?<%=url + listGames.getId()%>">
                        Excluir
                    </a>
                </td>
                <td>
                    <a href="alterarGames.jsp?<%=url + listGames.getId()%>"
                        Alterar
                    </a>
                </td>
                <% } %>
            </tr>
            <% } %>
        </tbody>
        <% } %>
    </table>
</body>
</html>

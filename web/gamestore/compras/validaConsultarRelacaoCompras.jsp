<%@page import="gamestore.model.bean.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@page import="gamestore.model.bean.Purchases"%>
<%@page import="gamestore.model.bean.Clients"%>
<%@page import="gamestore.model.bean.Games"%>
<%@page import="gamestore.controller.PurchasesController"%>

<%
    String clients_name = request.getParameter("NOMECLIENTES");
    Compras usupes = new Compras(clients_name);
    PurchasesController usupescont = new PurchasesController();
    List<Compras> compras_ = usupescont.list(usupes);
    Usuario usuLogado = (Usuario) session.getAttribute("ClientLogged");
    String url = "PBUSCA=" + usupes.getid_clients() + "&ID=";
%>

<html>
<%@include file="../../inc/materalizeWeb.inc" %>
<title>LISTA COMPRAS</title>
<body>
    <table class="striped responsive-table">
        <thead>
            <tr>
                <th data-field="IdCompras">Id</th>
                <th data-field="IdGames">IdGames</th>
                <th data-field="IdCliente">IdCliente</th>
                <th data-field="ValorTotal">ValorTotal</th>
                <th data-field="NomeClientes">NomeCliente</th>
                <th data-field="Excluir">Excluir</th>
                <th data-field="Alterar">Alterar</th>
            </tr>
        </thead>
        <% if (!(compras_.isEmpty())) { %>
        <tbody>
            <% for (Purchases listPurchases : compras_) { %>
            <tr>
                <td><%=listPurchases.getId()%></td>
                <td><%=listPurchases.getId_games()%></td>
                <td><%=listPurchases.getId_clients()%></td>
                <td><%=listPurchases.getTotal_value()%></td>
                <td><%=listPurchases.getName_clientes()%></td>
                <% if (usuLogado.getType().equals("ADM")) { %>
                <td>
                    <a href="excluirRelacaoCompras.jsp?<%=url + listPurchases.getId()%>">Excluir</a>
                </td>
                <td>
                    <a href="alterarRelacaoCompras.jsp?<%=url + listPurchases.getId()%>">Alterar</a>
                </td>
                <% } %>
            </tr>
            <% } %>
        </tbody>
        <% } %>
    </table>
</body>
</html>

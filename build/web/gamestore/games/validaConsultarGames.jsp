<%@page import="java.util.List"%> <%@page contentType="text/html"
pageEncoding="UTF-8"%> <%@page import="gamestore.model.bean.Usuario"%> <%@page
import="gamestore.model.bean.Games"%> <%@page
import="gamestore.controller.ControllerGames"%> <% String nome =
request.getParameter("NOME"); Games cli = new Games(nome); ControllerGames
inscont = new ControllerGames(); List<Games>
  inst = inscont.listar(cli); Usuario usuLogado = (Usuario)
  session.getAttribute("ClientLogged"); String url = "PBUSCA=" + nome + "&ID=";
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
          <% for (Games listaGames : inst) {%>
          <tr>
            <td><%=listaGames.getId()%></td>
            <td><%=listaGames.getNome()%></td>
            <td><%=listaGames.getValor()%></td>
            <td><%=listaGames.getTipo()%></td>
            <% if (usuLogado.getTipo().equals("ADM")) {%>
            <td>
              <a href="excluirGames.jsp?<%=url + listaGames.getId()%>"
                >Excluir</a
              >
            </td>
            <td>
              <a href="alterarGames.jsp?<%=url + listaGames.getId()%>"
                >Alterar</a
              >
            </td>
            <% } %>
          </tr>
          <% } %>
        </tbody>
        <% }%>
      </table>
    </body>
  </html></Games
>

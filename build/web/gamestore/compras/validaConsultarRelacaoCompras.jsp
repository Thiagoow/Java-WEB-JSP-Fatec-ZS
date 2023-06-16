<%@page import="gamestore.model.bean.Usuario"%> <%@page contentType="text/html"
pageEncoding="UTF-8"%> <%@page import="java.util.List"%> <%@page
import="gamestore.model.bean.Compras"%> <%@page
import="gamestore.model.bean.Clientes"%> <%@page
import="gamestore.model.bean.Games"%> <%@page
import="gamestore.controller.ControllerCompras"%> <% String nome_clientes =
request.getParameter("NOMECLIENTES"); Compras usupes = new
Compras(nome_clientes); ControllerCompras usupescont = new ControllerCompras();
List<Compras>
  compras_ = usupescont.listar(usupes); Usuario usuLogado = (Usuario)
  session.getAttribute("ClientLogged"); String url = "PBUSCA=" +
  usupes.getId_clientes()+"&ID=" ; %>

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
          <% for (Compras listaCompras : compras_) { %>
          <tr>
            <td><%=listaCompras.getId()%></td>
            <td><%=listaCompras.getId_games()%></td>
            <td><%=listaCompras.getId_clientes()%></td>
            <td><%=listaCompras.getValor_total()%></td>
            <td><%=listaCompras.getNome_clientes()%></td>
            <% if (usuLogado.getTipo().equals("ADM")) { %>
            <td>
              <a
                href="excluirRelacaoCompras.jsp?<%=url + listaCompras.getId()%>"
                >Excluir</a
              >
            </td>
            <td>
              <a
                href="alterarRelacaoCompras.jsp?<%=url + listaCompras.getId()%>"
                >Alterar</a
              >
            </td>
            <% } %>
          </tr>
          <% } %>
        </tbody>
        <% } %>
      </table>
    </body>
  </html></Compras
>

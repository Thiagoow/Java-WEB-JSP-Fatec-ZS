<%@page import="java.util.List"%> <%@page contentType="text/html"
pageEncoding="UTF-8"%> <%@page import="gamestore.model.bean.Usuario"%> <%@page
import="gamestore.model.bean.Clientes"%> <%@page
import="gamestore.controller.ControllerClientes"%> <% String nome =
request.getParameter("NOME"); Clientes cli = new Clientes(nome);
ControllerClientes clicont = new ControllerClientes(); List<Clientes>
  clie = clicont.listar(cli); Usuario usuLogado = (Usuario)
  session.getAttribute("ClientLogged"); String url = "PBUSCA=" + nome+"&ID="; %>

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
            <th data-field="Produto">Produto</th>
            <th data-field="Excluir">Excluir</th>
            <th data-field="Alterar">Alterar</th>
          </tr>
        </thead>
        <% if (!(clie.isEmpty())) { %>
        <tbody>
          <% for (Clientes listaClientes : clie) { %>
          <tr>
            <td><%=listaClientes.getId()%></td>
            <td><%=listaClientes.getCpf()%></td>
            <td><%=listaClientes.getNome()%></td>
            <td><%=listaClientes.getEmail()%></td>
            <td><%=listaClientes.getProduto()%></td>
            <% if (usuLogado.getTipo().equals("ADM")) { %>
            <td>
              <a href="excluirClientes.jsp?<%=url + listaClientes.getId()%>"
                >Excluir</a
              >
            </td>
            <td>
              <a href="alterarClientes.jsp?<%=url + listaClientes.getId()%>"
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
  </html></Clientes
>

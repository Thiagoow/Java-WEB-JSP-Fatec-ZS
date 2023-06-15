<%@page contentType="text/html" pageEncoding="UTF-8"%> <%@page
import="gamestore.model.bean.Clientes"%> <%@page
import="gamestore.controller.ControllerClientes"%> <% String cod =
request.getParameter("ID"); int id = Integer.parseInt(cod); String cpf =
request.getParameter("CPF"); String nome = request.getParameter("NOME"); String
produto = request.getParameter("PRODUTO"); String email =
request.getParameter("EMAIL"); String pbusca = request.getParameter("PBUSCA");
Clientes cli = new Clientes(id, nome, cpf, produto, email); ControllerClientes
cliCont = new ControllerClientes(); cli = cliCont.alterar(cli); // REDIRECIONA
PARA A PAG LOGIN.JSP String url = "validaConsultarClientes.jsp?NOME=" + pbusca;
response.sendRedirect(url); %>

<%@page contentType="text/html" pageEncoding="UTF-8"%> <%@page
import="gamestore.model.bean.Clientes"%> <%@page
import="gamestore.controller.ControllerClientes"%> <% String cpf =
request.getParameter("CPF"); String nome = request.getParameter("NOME"); String
email = request.getParameter("EMAIL"); String produto =
request.getParameter("PRODUTO"); Clientes cli = new
Clientes(nome,cpf,produto,email); ControllerClientes pescont = new
ControllerClientes(); cli = pescont.inserir(cli); // REDIRECIONA PARA A PAG
LOGIN.JSP String url = "inserirClientes.jsp"; response.sendRedirect(url); %>

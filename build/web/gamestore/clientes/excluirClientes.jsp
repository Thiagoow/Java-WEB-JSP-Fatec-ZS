<%@page contentType="text/html" pageEncoding="UTF-8"%> <%@page
import="gamestore.model.bean.Clientes"%> <%@page
import="gamestore.controller.ControllerClientes"%> <% String cod =
request.getParameter("ID"); int id = Integer.parseInt(cod); Clientes cli = new
Clientes(id); ControllerClientes cliCont = new ControllerClientes(); cli =
cliCont.excluir(cli); String pbusca = request.getParameter("PBUSCA"); //
REDIRECIONA PARA A PAG LOGIN.JSP String url =
"validaConsultarClientes.jsp?NOME=" + pbusca; response.sendRedirect(url); %>

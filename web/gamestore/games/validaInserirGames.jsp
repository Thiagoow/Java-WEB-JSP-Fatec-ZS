<%@page contentType="text/html" pageEncoding="UTF-8"%> <%@page
import="gamestore.model.bean.Games"%> <%@page
import="gamestore.controller.GamesController"%> <% String nome =
request.getParameter("NOME"); double valor =
Double.parseDouble(request.getParameter("VALOR")); String tipo =
request.getParameter("TIPO"); Games ins = new Games(nome, valor, tipo);
GamesController gmsCont = new GamesController(); ins = gmsCont.inserir(ins); //
REDIRECIONA PARA A PAG LOGIN.JSP String url = "inserirGames.jsp";
response.sendRedirect(url); %>

<HTML>
  <BODY> <%=nome%> <BR /> <%=valor%> <BR /> <%=tipo%> <BR /> </BODY>
</HTML>

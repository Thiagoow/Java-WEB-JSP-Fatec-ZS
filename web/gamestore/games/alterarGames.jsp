<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="gamestore.model.bean.Games"%>
<%@page import="gamestore.controller.GamesController"%>

<%
    String cod = request.getParameter("ID");
    int id = Integer.parseInt(cod);
    Games ins = new Games(id);
    GamesController gmsCont = new GamesController();
    ins = gmsCont.search(ins);
    String pbusca = request.getParameter("PBUSCA");
%>

<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <title>ALTERAR - GAMES</title>
    <body>
       <div class="container"/>
       <h1>ALTERAR GAMES</h1>
        <form name="alterarGames" action="validaAlterarGames.jsp" method="post">
            Nome: <input type="text" name="Nome" value="<%=ins.getName()%>"> <br>
            Valor: <input type="number" name="VALOR" value="<%=ins.getValue()%>"> <br>
            Tipo: <input type="text" name="TIPO" value="<%=ins.getType()%>"> <br>
            <input type="HIDDEN" name="ID" value="<%=ins.getId()%>"> <br>
            <input type="HIDDEN" name="PBUSCA" value="<%=pbusca%>"> <br>
            <input type="submit" name="Enviar" value="OK">
        </form>
        <div>
    </body>
</html>
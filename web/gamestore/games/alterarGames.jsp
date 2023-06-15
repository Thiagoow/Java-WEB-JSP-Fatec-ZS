<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="gamestore.model.bean.Games"%>
<%@page import="gamestore.controller.ControllerGames"%>

<%
    String cod = request.getParameter("ID");
    int id = Integer.parseInt(cod);
    Games ins = new Games(id);
    ControllerGames insCont = new ControllerGames();
    ins = insCont.buscar(ins);
    String pbusca = request.getParameter("PBUSCA");
%>

<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <title>ALTERAR - Games</title>
    <body>
       <div class="container"/>
       <h1>ALTERAR Games</h1>
        <form name="alterarGames" action="validaAlterarGames.jsp" method="post">
            Nome: <input type="text" name="Nome" value="<%=ins.getNome()%>"> <br>
            Valor: <input type="number" name="VALOR" value="<%=ins.getValor()%>"> <br>
            Tipo: <input type="text" name="TIPO" value="<%=ins.getTipo()%>"> <br>
            <input type="HIDDEN" name="ID" value="<%=ins.getId()%>"> <br>
            <input type="HIDDEN" name="PBUSCA" value="<%=pbusca%>"> <br>
            <input type="submit" name="Enviar" value="OK">
        </form>
        <div>
    </body>
</html>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@page import="gamestore.model.bean.Clients"%>
<%@page import="gamestore.controller.ClientsController"%>
<%@page import="gamestore.model.bean.Games"%>
<%@page import="gamestore.controller.GamesController"%>

<%
    GamesController gmsCont = new GamesController();
    Games ins = new Games("");
    List<Games> inst = gmsCont.list(ins);

    ClientsController cliCont = new ClientsController();
    Clients cliEnt = new Clients("");
    List<Clients> clie = cliCont.list(cliEnt);
%>

<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <title>INSERIR COMPRAS</title>
    <body>
        <div class="container"/>
            <h1>Inseri Compras</h1>
            <form name="inseriCompras" action="validaRelacaoCompras.jsp" method="POST">
                <table>
                    <tr>
                        <td>Games:</td>
                        <td>
                            <select NAME ="ID_GAMES" class="browser-default">
                                <% for (Games ins_ : inst) { %>
                                    <option value="<%=ins_.getId()%>"><%=ins_.getName()%></option>
                                <% } %>
                            </select> 
                        </td>
                    </tr>
                    <tr>
                        <td>Clientes:</td>
                        <td>
                            <select NAME="ID_CLIENTS" class="browser-default">
                                <% for (Clients cli : clie) { %>
                                    <option value="<%=cli.getId()%>"><%=cli.getName()%></option>
                                <% } %>
                            </select> 
                        </td>
                    </tr>
                    <tr>
                        <td>VALOR TOTAL:</td>
                        <td><input type="text" name="VALORTOTAL" value=""></td>
                        <td>Nome do Cliente:</td>
                        <td><input type="text" name="NOMECLIENTES" value=""></td>
                    </tr>
                </table>    
                <input type="submit" name="Enviar" value="Enviar">  <br>
            </form>
        </div>                     
    </body>
</html>

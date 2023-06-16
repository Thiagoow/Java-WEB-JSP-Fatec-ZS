<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@page import="java.util.List"%>
<%@page import="gamestore.model.bean.Clients"%>
<%@page import="gamestore.controller.ClientsController"%>
<%@page import="gamestore.model.bean.Games"%>
<%@page import="gamestore.controller.GamesController"%>
<%@page import="gamestore.model.bean.Purchases"%>
<%@page import="gamestore.controller.PurchasesController"%>

<%
    GamesController gmsCont = new GamesController();
    Games ins = new Games("");
    List<Games> inst = gmsCont.list(ins);

    ClientsController cliCont = new ClientsController();
    Clients cliEnt = new Clients("");
    List<Clients> clie = cliCont.list(cliEnt);

    String cod = request.getParameter("ID");
    int id = Integer.parseInt(cod);
    Purchases comIns = new Purchases(id);
    PurchasesController comgmsCont = new PurchasesController();
    comIns = comgmsCont.search(comIns);
    String pbusca = request.getParameter("PBUSCA");
%>

<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <title>ALTERAR - COMPRAS</title>
    <body>
       <div class="container"/>
       <h1>ALTERAR - COMPRAS</h1>
        <form name="alterarCompras" action="validaAlterarRelacaoCompras.jsp" method="post">
            <table>
                <tr>
                    <td>Clientes:</td>
                        <td>
                            <select NAME="ID_CLIENTS" class="browser-default">
                                <% for (Clients cli : clie) { %>
                                    <% if( cli.getId() == comIns.getId_clients()) { %>
                                        <option selected value="<%=cli.getId()%>"><%=cli.getName()%></option>
                                    <% } else { %>
                                        <option value="<%=cli.getId()%>"><%=cli.getName()%></option>
                                    <% } %>
                                <% } %>
                            </select> 
                        </td>
                </tr>
                <tr>
                        <td>Games:</td>
                        <td>
                            <select NAME ="ID_GAMES" class="browser-default">
                                <% for (Games in : inst) { %>
                                    <% if( in.getId()== comIns.getId_Games()) { %>
                                        <option selected value="<%=in.getId()%>"><%=in.getName()%></option>
                                    <% } else { %>
                                        <option value="<%=in.getId()%>"><%=in.getName()%></option>
                                    <% } %>
                                <% } %>
                            </select> 
                        </td>
                    </tr>
                    <tr>
                        <td>Valor Total:</td>
                        <td><input type="text" name="VALORTOTAL" value="<%=comIns.getTotal_value()%>"></td>
                        <td>Nome Cliente:</td>
                        <td><input type="text" name="NOMECLIENTES" value="<%=comIns.getName_clients()%>"></td>
                    </tr>
                </table>    
            <input type="HIDDEN" name="ID" value="<%=comIns.getId()%>"> <br>
            <input type="HIDDEN" name="PBUSCA" value="<%=pbusca%>">
            <input type="submit" name="Enviar" value="OK">
        </form>
        <div>
    </body>
</html>
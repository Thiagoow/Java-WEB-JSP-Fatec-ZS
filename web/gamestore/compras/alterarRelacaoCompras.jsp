<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@page import="java.util.List"%>
<%@page import="gamestore.model.bean.Clientes"%>
<%@page import="gamestore.controller.ControllerClientes"%>
<%@page import="gamestore.model.bean.Games"%>
<%@page import="gamestore.controller.ControllerGames"%>
<%@page import="gamestore.model.bean.Compras"%>
<%@page import="gamestore.controller.ControllerCompras"%>


<%
    ControllerGames insCont = new ControllerGames();
    Games ins = new Games("");
    List<Games> inst = insCont.listar(ins);

    ControllerClientes cliCont = new ControllerClientes();
    Clientes cliEnt = new Clientes("");
    List<Clientes> clie = cliCont.listar(cliEnt);

    String cod = request.getParameter("ID");
    int id = Integer.parseInt(cod);
    Compras comIns = new Compras(id);
    ControllerCompras comInsCont = new ControllerCompras();
    comIns = comInsCont.buscar(comIns);
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
                            <select NAME="ID_CLIENTES" class="browser-default">
                                <% for (Clientes cli : clie) { %>
                                    <% if( cli.getId() == comIns.getId_clientes()) { %>
                                        <option selected value="<%=cli.getId()%>"><%=cli.getNome()%></option>
                                    <% } else { %>
                                        <option value="<%=cli.getId()%>"><%=cli.getNome()%></option>
                                    <% } %>
                                <% } %>
                            </select> 
                        </td>
                </tr>
                <tr>
                        <td>Games:</td>
                        <td>
                            <select NAME ="ID_Games" class="browser-default">
                                <% for (Games in : inst) { %>
                                    <% if( in.getId()== comIns.getId_Games()) { %>
                                        <option selected value="<%=in.getId()%>"><%=in.getNome()%></option>
                                    <% } else { %>
                                        <option value="<%=in.getId()%>"><%=in.getNome()%></option>
                                    <% } %>
                                <% } %>
                            </select> 
                        </td>
                    </tr>
                    <tr>
                        <td>Valor Total:</td>
                        <td><input type="text" name="VALORTOTAL" value="<%=comIns.getValor_total()%>"></td>
                        <td>Nome Cliente:</td>
                        <td><input type="text" name="NOMECLIENTES" value="<%=comIns.getNome_clientes()%>"></td>
                    </tr>
                </table>    
            <input type="HIDDEN" name="ID" value="<%=comIns.getId()%>"> <br>
            <input type="HIDDEN" name="PBUSCA" value="<%=pbusca%>">
            <input type="submit" name="Enviar" value="OK">
        </form>
        <div>
    </body>
</html>
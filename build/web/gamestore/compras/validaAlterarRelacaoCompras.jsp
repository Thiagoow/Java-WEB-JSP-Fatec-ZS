<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@page import="gamestore.model.bean.Clientes"%>
<%@page import="gamestore.controller.ControllerClientes"%>
<%@page import="gamestore.model.bean.Games"%>
<%@page import="gamestore.controller.ControllerGames"%>
<%@page import="gamestore.model.bean.Compras"%>
<%@page import="gamestore.controller.ControllerCompras"%>

<%
    String cod = request.getParameter("ID");
    int id = Integer.parseInt(cod);
    int id_clientes = Integer.parseInt(request.getParameter("ID_CLIENTES"));
    int id_games = Integer.parseInt(request.getParameter("ID_GAMES"));
    double valor_total = Double.parseDouble(request.getParameter("VALORTOTAL"));
    String nome_clientes = request.getParameter("NOMECLIENTES");
    Compras comp = new Compras(id, valor_total,id_clientes,id_games, nome_clientes);
    ControllerCompras compcont = new ControllerCompras();
    comp = compcont.alterar(comp);
    // REDIRECIONA PARA A PAG LOGIN.JSP
    String url = "validaConsultarRelacaoCompras.jsp?NOMECLIENTES="+nome_clientes;
    response.sendRedirect(url);
%>    
    
    
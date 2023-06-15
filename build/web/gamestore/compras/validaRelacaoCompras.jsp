<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="gamestore.model.bean.Compras"%>
<%@page import="gamestore.controller.ControllerCompras"%>


<%
    int id_clientes = Integer.parseInt(request.getParameter("ID_CLIENTES"));
    int id_games = Integer.parseInt(request.getParameter("ID_GAMES"));
    double valor_total = Double.parseDouble(request.getParameter("VALORTOTAL"));
    String nome_clientes = request.getParameter("NOMECLIENTES"); 
    Compras comp = new Compras(valor_total, id_games, id_clientes, nome_clientes);
    ControllerCompras compcont = new ControllerCompras();
    comp = compcont.inserir(comp);
// REDIRECIONA PARA A PAG LOGIN.JSP
    String url = "inserirRelacaoCompras.jsp";
    response.sendRedirect(url);

%>
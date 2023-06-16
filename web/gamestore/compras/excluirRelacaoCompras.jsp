<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="gamestore.model.bean.Purchases"%>
<%@page import="gamestore.controller.PurchasesController"%>

<%
    String cod = request.getParameter("ID");
    int id = Integer.parseInt(cod);
    Purchases compPes = new Purchases(id);
    PurchasesController cligmsCont = new PurchasesController();
    compPes = cligmsCont.delete(compPes);

    String pbusca = request.getParameter("PBUSCA");
    // REDIRECIONA PARA A PAG LOGIN.JSP
    String url = "validaConsultarRelacaoCompras.jsp?CLIENTE=" + pbusca;
    response.sendRedirect(url);
%>

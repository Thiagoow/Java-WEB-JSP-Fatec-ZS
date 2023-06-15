<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <title>CONSULTAR - CLIENTES - INSTRUMENTOS</title>
    <body>
       <div class="container"/>
       <h1>CONSULTAR CLIENTES - INSTRUMENTOS</h1>
       <form name="consultarCompras" action="validaConsultarRelacaoCompras.jsp" method="post">
           Nome Cliente: <input type="text" name ="NOMECLIENTES" value=""> <br>
           <input type="submit" name ="Enviar" value="Enviar"> <br>
       </form>
       </div>
    </body>
</html>

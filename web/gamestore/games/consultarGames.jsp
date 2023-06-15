<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <title>CONSULTAR - GAMES</title>
    <body>
       <div class="container"/>
       <h1>CONSULTAR GAMES</h1>
       <form name="consultarGames" action="validaConsultarGames.jsp" method="post">
           Nome <input type="text" name ="NOME" value=""> <br>
           <input type="submit" name ="Enviar" value="Enviar"> <br>
       </form>
       </div>
    </body>
</html>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <title>INSERIR - CLIENTE</title>
    <body>
       <div class="container"/>
        <h1>INSERIR CLIENTE</h1>
        <form name="inserirClientes" action="validaInserirClientes.jsp" method="post">
            Cpf: <input type="text" name="CPF" value=""> <br>
            Nome: <input type="text" name="NOME" value=""> <br>
            Email: <input type="text" name="EMAIL" value=""> <br>
            Produto: <input type="text" name="PRODUTO" value=""> <br>
            <input type="submit" name="Enviar" value="OK">
        </form>
        </div>
    </body>
</html>

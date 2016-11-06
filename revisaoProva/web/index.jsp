<%@page import="br.com.controller.FilterLogin"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
         <title>login</title>
         <meta name="viewport" content="width=device-width, initial-scale=1.0">
      
    </head>
    <body>
         <form action="ServletLogin" method="POST">
            Usuário
            <input type="text" name="usuario" value=""/>
            <br>
            Senha
            <input type="password" name="senha" value=""/>
            <br>
            <br>
            <input type="submit" name="submit"/>
            <input type="reset" name="reset" />
        </form>
         <% if (request.getAttribute("errMsg") != null && !request.getAttribute("errMsg").equals("")) {%>
                <div class="alert alert-danger">
                    <strong><%= request.getAttribute("errMsg")%></strong> 
                </div>
         <% } %>

        <script type="text/javascript" src="js/app.js"></script>
    </body>
</html>
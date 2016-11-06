
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cookies</title>
    </head>
    <body>
        <%
            Cookie[] cookies = request.getCookies();
            String usuario = (cookies[1].getValue());
            String senha = (cookies[2].getValue());
        %>

        <table border="1">
            <h1>Informação Gravada no Cookies </h1>
            <tr>
                <td><h3>Usuário</h3></td>
                <td><h3><%=usuario%></h3></td>
            </tr>    
            <tr>
                <td><h3>Senha</h3></td>
                <td><h3><%=senha%></h3></td>
            </tr>  
        </table>
            <h3>Gravar informações na Sessão</h3>
        <form action="ServletGravarSessao" method="GET">
            <input type="submit" name="submit"/>
        </form>
    </body>
</html>
</body>
</html>






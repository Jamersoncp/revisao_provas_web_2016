<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sessão</title>
    </head>
    <body>
        <%
            HttpSession sessao = request.getSession();
            String id = sessao.getId();
            String usuario = (String) sessao.getAttribute("usuario");
            String senha = (String) sessao.getAttribute("senha");
        %>

        <table border="1">
            <h1>Informação Gravada na Sessão </h1>
            <tr>
                <td><h3>Id da Sessão</h3></td>
                <td><h3><%=id%></h3></td>
            </tr> 
            <tr>
                <td><h3>usuario</h3></td>
                <td><h3><%=usuario%></h3></td>
            </tr>  
            <tr>
                <td><h3>senha</h3></td>
                <td><h3><%=senha%></h3></td>
            </tr> 
            
        </table>

    </body>
</html>
</body>
</html>

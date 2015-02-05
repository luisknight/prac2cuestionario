<%-- 
    Document   : resultado
    Created on : 4/02/2015, 11:01:27 PM
    Author     : vale
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Finalmente</title>
    </head>
    <body>
        <%
            String total=request.getAttribute("total").toString();
        %>
        
        <h1><p class="text-center">Felicidades</p></h1>
        <h2><p class="text-center">Obtuviste un total de: </p></h1>
        <h1><p class="text-center"><%=total%></p></h1>
        <h2><p class="text-center">Respuestas Correctas </p></h1>
    </body>
</html>

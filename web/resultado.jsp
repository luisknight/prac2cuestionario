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
            String total = request.getAttribute("total").toString();
            double porcentaje = Double.parseDouble(request.getAttribute("porcentaje").toString());
            String color = request.getAttribute("color").toString();
            String mensaje = request.getAttribute("mensaje").toString();
            
        %>
        <div class="row">
            <div class="col-md-6 col-md-offset-3">
                <div class="panel panel-<%=color%>">
                    <div class="panel-heading">
                        <h3 class="panel-title">Preguntas</h3>
                      </div>
                    <div class="panel-body">
                       <div class="jumbotron">
                           <h1 class="text-center"><%=mensaje%> <br><small>Obtuviste un total de:</small></h1>
                        <h2 class="text-center"><%=total%><small>respuestas correctas</small></h2>
                      </div>
                    </div>
                </div>
            </div>
        </div>

    </body>
</html>

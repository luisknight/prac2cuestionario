<%-- 
    Document   : examen2
    Created on : 03-feb-2015, 12:02:08
    Author     : Marco
--%>

<%@page import="pojos.Pregunta"%>
<%@page import="java.util.List"%>
<%@page import="daos.PreguntaDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
         <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width">
        <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <script src="soruces/js/jquery-1.11.1.min.js"></script>
        <script src="bootstrap/js/bootstrap.min.js"></script> 
        <title>Preguntas</title>
    </head>
    <body>
        
        <%
            PreguntaDao pdao = new PreguntaDao();
            List preguntas =(List) pdao.loadAll();
        %>
        
        <ul class="list-group">
            
            <%
               for(int i =0;i<preguntas.size();i++){
                   Pregunta preg = (Pregunta) preguntas.get(i);  
            %>
            <li class="list-group-item"><%preg.getPregunta();%> </li>
            
            <% } %>
          </ul>
        
    </body>
</html>



















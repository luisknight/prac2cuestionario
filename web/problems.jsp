<%-- 
    Document   : problems
    Created on : 04-feb-2015, 16:54:07
    Author     : Marco
--%>

<%@page import="pojos.Respuesta"%>
<%@page import="daos.RespuestaDao"%>
<%@page import="java.util.List"%>
<%@page import="daos.PreguntaDao"%>
<%@page import="pojos.Pregunta"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width">
        <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <script src="bootstrap/js/jquery-1.11.1.min.js"></script>
        <script src="bootstrap/js/bootstrap.min.js"></script> 
        <script src="bootstrap/js/goodTimer.js"></script> 
        <title>Preguntas</title>
    </head>
    <style>
        #timer{
            font-size: 35px;
            color: #ffffff;
            background:#3F51B5; 
            box-shadow: 5px 5px 0 #BDBDBD;
            -webkit-box-shadow: 5px 5px 0 #BDBDBD;
            -moz-box-shadow: 5px 5px 0 #BDBDBD;
        }
        #preguntas{
            margin-top: 55px;
        }
    </style>
    <body>
        <%

            List preguntas = (List) request.getAttribute("preguntas");
            List respuestas = (List) request.getAttribute("respuestas");
        %>
        <nav class="navbar navbar-default navbar-fixed-top">
  <div class="container-fluid">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
        <li class="active"><a href="#">Examen <span class="sr-only">(current)</span></a></li>
       
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <li> <a class="navbar-brand" href="#"><div id="timer"><span class="glyphicon glyphicon-time" aria-hidden="true"></span></div></a></li>
      </ul>
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>
        
        
        

        <div class="container" id="preguntas">
            <div class="row">
                <div class="col-md-10">
                    <form action="EvaluarExamen" method="POST">
                    <div class="panel-group" id="accordion" role="tablist" aria-multiselectable="false">
                        <%
                            for (int i = 0; i < preguntas.size(); i++) {
                                Pregunta preg = (Pregunta) preguntas.get(i);
                        %>
                        <div class="panel panel-default">
                            <div class="panel-heading" style="color: #ffffff; background:#009688" role="tab" id="heading<%=preg.getIdPregunta()%>">
                                <h4 class="panel-title">
                                    <a data-toggle="collapse" data-parent="#accordion" href="#collapse<%=preg.getIdPregunta()%>" aria-expanded="true" aria-controls="collapseOne">
                                        <%=i + 1 + ".-" + preg.getPregunta()%>
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse<%=preg.getIdPregunta()%>" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingOne">
                                <div class="panel-body">
                                    <blockquote>
                                        <p><%=preg.getPregunta()%></p>
                                        <footer><%=preg.getDescripcion()%>  <cite title="Source Title"> Java</cite></footer>
                                    </blockquote>

                                    <img src="imgQuestions/java_monedas_mini.jpg" class="img-responsive" alt="Responsive image">
                                    <div class="panel panel-danger">
                                        <div class="panel-heading">
                                            <h3 class="panel-title">Respuestas</h3>
                                        </div>
                                        <div class="panel-body">
                                            <% for (int j = 0; j < respuestas.size(); j++) {
                                                    Respuesta resp = (Respuesta) respuestas.get(j);
                                                    if (resp.getPreguntaIdPregunta() == preg.getIdPregunta()) {
                                            %>
                                            <div class="radio">
                                                <label>
                                                    <input type="radio" name="<%=preg.getIdPregunta()%>" id="<%=resp.getIdRespuesta()%>" value="<%=resp.getRespuesta()%>" aria-label="option1">
                                                    <%=resp.getRespuesta()%>
                                                </label>
                                            </div> 
                                            <% } %> <!--fin de las respuestas -->

                                            <% } %><!--fin del for respuestas -->
                                        </div>
                                    </div>  
                                </div>
                            </div>
                        </div>
                        <% }%><!--fin del for preguntas -->
                    </div> 
                        <button type="submit" id="btnSubmit" style="background:#3F51B5" class="btn btn-success btn-lg btn-block">Enviar</button>
                    </form>
     
                </div> <!--Fin del col 10 -->
                <div class="col-md-2">
                    
                </div>
            </div>       
        </div>


        <script type="text/javascript">
            $('#timer').timer({
                //duration: '5m30s',
                duration: '10m15s',
                callback: function () {
                    alert('Se acabo el Tiempo Padre!!');
                    jQuery("#btnSubmit").click(); //llega al tiempo limite y hace submit del form
                }
            });
        </script>

    </body>
</html>

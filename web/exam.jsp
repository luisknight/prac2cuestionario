<%-- 
    Document   : exam
    Created on : 25-ene-2015, 9:40:02
    Author     : Marco
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width">
        <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <script src="soruces/js/jquery-1.11.1.min.js"></script>
        <script src="bootstrap/js/bootstrap.min.js"></script> 
        <title>Exam</title>
    </head>
    <body>
        <div class="container">
            <div class="row" >
                <div class="page-header" style="background: #B2DFDB">
                    <h1>Que empiece el juego <small> Java</small></h1>
                </div>
            </div>
            <div class="row">
                <div class="col-xs-12 col-md-8">
                    <div class="panel panel-danger">
                        <div class="panel-heading">
                            <h3 class="panel-title"><span class="glyphicon glyphicon-question-sign" aria-hidden="true"></span> Pregunta</h3>
                        </div>
                        <div class="panel-body">
                            <blockquote>
                                <p>¿Enserio crees poder con este código?</p>
                                <footer>Soy la descripción  <cite title="Source Title"> Java</cite></footer>
                            </blockquote>
                        </div>
                    </div>

                </div>
                <div class="col-xs-6 col-md-4">00:00</div>
            </div>
            <div class="row">
                <div class="col-xs-12 col-md-8">
                    <div class="panel panel-success">
                        <div class="panel-heading">
                            <h3 class="panel-title">Código</h3>
                        </div>
                        <div class="panel-body">
                            <img src="imgQuestions/java_monedas_mini.jpg" class="img-responsive" alt="Responsive image">
                        </div>
                    </div>
                </div>
                
            </div>
            <div class="row">
                <div class="col-xs-12 col-md-8">
                    <div class="panel panel-info">
                        <div class="panel-heading">
                            <h3 class="panel-title"><span class="glyphicon glyphicon-list" aria-hidden="true"></span>Respuestas</h3>
                        </div>
                        <div class="panel-body">
                            <div class="radio">
                                <label>

                                    <input type="radio" name="blankRadio" id="blankRadio1" value="option1" aria-label="option1">Opción 1
                                </label>
                            </div>
                            <div class="radio">
                                <label>
                                    <input type="radio" name="blankRadio" id="blankRadio2" value="option2" aria-label="option2"> Opción 2
                                </label>
                            </div>
                            <div class="radio">
                                <label>
                                    <input type="radio" name="blankRadio" id="blankRadio3" value="option3" aria-label="option3"> Opción 3
                                </label>
                            </div>
                            <div class="radio">
                                <label>
                                    <input type="radio" name="blankRadio" id="blankRadio4" value="option4" aria-label="option4"> Opción 4
                                </label>
                            </div>
                        </div>
                    </div>

                </div>
                <div class="col-xs-6 col-md-4">
                    <button type="button" class="btn btn-success btn-lg">Siguiente <span class="glyphicon glyphicon-triangle-right" aria-hidden="true"></span></button>
                </div>
            </div>
        </div>
    </body>
</html>

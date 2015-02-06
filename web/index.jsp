<%-- 
    Document   : index
    Created on : 29-ene-2015, 21:35:24
    Author     : ZephyrKnight
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta name="viewport" content="width=device-width">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <script src="bootstrap/js/jquery-1.11.1.min.js"></script>
        <script src="bootstrap/js/ion.sound.js"></script>
        <script src="bootstrap/js/bootstrap.min.js"></script>    
        <title>Start</title>
    </head>
    <body>
        <div class="jumbotron">
            <h1>Hola Bienvenido!!</h1>
            <p>¿Qué tan bueno eres en java?.. Tal vez sólo eres un Muggle</p>
            <p><a class="btn btn-primary btn-lg" id="b01" href="PreguntasAll" role="button">Empieza ya !!! </a></p>
          </div>
        
        
        <script>
    $(document).ready(function(){

        ion.sound({
            sounds: [
                {name: "button_click"},
            ],
            path: "bootstrap/sounds/",
            preload: true,
            volume: 1.0
        });
        $("#b01").on("click", function(){
            ion.sound.play("button_click");
        });

    });
</script>
    </body>
</html>

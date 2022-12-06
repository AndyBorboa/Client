<%-- 
    Document   : register
    Created on : 5/12/2022, 08:53:56 PM
    Author     : andre
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,400italic,600,700' rel='stylesheet' type='text/css'>
        <link href="css/font-awesome.min.css" rel="stylesheet">
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <link href="css/bootstrap-datetimepicker.min.css" rel="stylesheet">
        <link href="css/flexslider.css" rel="stylesheet">
        <link href="css/templatemo-style.css" rel="stylesheet">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <div class="container tm-home-section-1">
        <br>
        <br>
        <br>
    
<div class="tab-content">
    <div role="tabpanel" class="tab-pane fade in active tm-white-bg" id="hotel">
        <div class="tm-search-box effect2">
    <div class="hotel-search-form">  
        <div class="tm-form-inner">
            <h1 align="center">Registro de Usuario</h1> 
<form name="frmRegistro" method="post" action="RegistrarUsuario"> 
    <div class="form-group">
    Nombre de Usuario :<input class="form-control" type = "text" name="nombreUsuario" id="nombreUsuario"/> 
    Contraseña:        <input class="form-control" type = "password" name="pass" id="contraseña"/> <br>
</br>
    </div>
    <div align="center">
        <button type="submit" name="submit" class="tm-yellow-btn">Registrar</button>
    </div>
<p align="center">¿Ya tienes una cuenta? <a href="index.jsp">Iniciar Sesion</a></p>
</form> 
    </div>
    </div>
        </div>
    </div>
</div>
    </div>
    </body>
</html>

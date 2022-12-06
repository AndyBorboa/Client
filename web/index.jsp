<%-- 
    Document   : index
    Created on : 1/12/2022, 04:40:01 PM
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

          <br>
   <div class="container tm-home-section-1">
       <br>
       <br>
   
   <div class="tab-content">
    <div role="tabpanel" class="tab-pane fade in active tm-white-bg" id="hotel">
     <div class="tm-search-box effect2">
      <div class="hotel-search-form">
       <div class="tm-form-inner">
           <br>
           <h2 align="center">Iniciar Sesion</h2>
           <br>
        <form action="IniciarSesion" name="frmIniciarSesion" method="post" >
         <div class="form-group">
          <label>Nombre de Usuario:</label>
          <input class="form-control" type="text" name="nombreUsuario" /> <br>
          <label>Contraseña:        </label>
          <input class="form-control" type="password" name="pass" /> <br>
         </div>
         <div align="center">
          <button type="submit" name="submit" class="tm-yellow-btn">Iniciar Sesion</button>
         </div>
         <p align="center">¿No tienes una cuenta? <a href="Registro.jsp">Registrarse</a></p>
        </form>

       </div>
      </div>
     </div>
    </div>
   </div>
   </div>
    </body>
</html>

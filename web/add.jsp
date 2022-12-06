<%-- 
    Document   : add
    Created on : 29/11/2022, 03:28:10 PM
    Author     : andre
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
         <script type="text/javascript" src="js/jquery.min.js"></script>
         <script type="text/javascript" src="js/main.js"></script>
         
         <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,400italic,600,700' rel='stylesheet' type='text/css'>
         <link href="css/font-awesome.min.css" rel="stylesheet">
         <link href="css/bootstrap.min.css" rel="stylesheet">
         <link href="css/bootstrap-datetimepicker.min.css" rel="stylesheet">
         <link href="css/flexslider.css" rel="stylesheet">
         <link href="css/templatemo-style.css" rel="stylesheet">
         <title>Agregar Producto</title>
    </head>
    <body>
               <div class="container mt-4">
            <div class="card">
                <div class="card-header">
                    <h5>Agregar nuevo Producto</h5> 
                </div>
                <div class="card-body" id="formulario">
                    
                    <form action="GuardarProducto" name="frmRegistroProducto" method="post" id="frmAdd">
                        <label>Nombre del producto: </label>
                        <input type="text" name="nombreProducto" id="nombreProducto" class="form-control">
                        <label>Categoria: </label>
                        <input type="text" name="Categoria" id="Categoria" class="form-control">
                        <label>Stock: </label>
                        <input type="text" name="Stock" id="Stock" class="form-control">
                        <label>Precio: </label>
                        <input type="text" name="Precio" id="Precio" class="form-control"><br>
                        
                        <input type="submit" name="submit" id="btnCrearProducto" value="Agregar" class="btn btn-primary"></input>
                        <a href="Controlador?accion=index">Regresar</a>
                    </form>
                </div>
               
            </div>
        </div>
    </body>
</html>

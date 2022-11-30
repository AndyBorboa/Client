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
         <!-- Bootstrap CSS -->
         <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <title>JSP Page</title>
    </head>
    <body>
               <div class="container mt-4">
            <div class="card">
                <div class="card-header">
                    <h5>Agregar nuevo Producto</h5> 
                </div>
                <div class="card-body">
                    <form accion="Controlador">
                        <label>Nombre del producto: </label>
                        <input type="text" name="nombreProducto" class="form-control">
                        <label>Categoria: </label>
                        <input type="text" name="Categoria" class="form-control">
                        <label>Stock: </label>
                        <input type="text" name="Stock" class="form-control">
                        <label>Precio: </label>
                        <input type="text" name="Precio" class="form-control">
                        
                        <input type="submit" name="accion" value="Guardar">
                        <a href="Controlador?accion=index">Regresar</a>
                    </form>
                </div>
            </div>
        </div>
    </body>
</html>

<%-- 
    Document   : edit
    Created on : 29/11/2022, 04:23:04 PM
    Author     : andre
--%>

<%@page import="webservice.Producto"%>
<%@page import="Modelo.ProductoService"%>
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
                    <h5>Actualizar Producto</h5> 
                </div>
                <%
                    int Codigo=Integer.parseInt((String)request.getAttribute("Codigo"));
                    ProductoService product = new ProductoService();
                    Producto pro = product.listarClave(Codigo);
                %>
                
                <div class="card-body">
                    <form accion="Controlador">
                        <label>Codigo: </label>
                        <input type="text" value="<%= pro.getCodigo() %>" name="Codigo" readonly="" class="form-control">
                        <label>Nombre del producto: </label>
                        <input type="text" value="<%= pro.getNombreProducto() %>" name="nombreProducto" class="form-control">
                        <label>Categoria: </label>
                        <input type="text" value="<%= pro.getCategoria() %>" name="Categoria" class="form-control" valu="">
                        <label>Stock: </label>
                        <input type="text" value="<%= pro.getStock() %>" name="Stock" class="form-control" value="">
                        <label>Precio: </label>
                        <input type="text" value="<%= pro.getPrecio() %>" name="Precio" class="form-control" value="">
                        
                        <input type="submit" name="accion" value="Actualizar" class="btn btn-primary">
                        <a href="Controlador?accion=index">Regresar</a>
                    </form>
                </div>
            </div>
        </div>
    </body>
</html>

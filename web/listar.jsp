<%-- 
    Document   : index
    Created on : 29/11/2022, 10:38:16 AM
    Author     : andre
--%>

<%@page import="webservice.Producto"%>
<%@page import="Modelo.ProductoService"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <!-- Bootstrap CSS -->
         <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
         <script type="text/javascript" src="js/jquery.min.js"></script>
        <title>Listar Productos</title>
    </head>
    
    
    <body>
        <div class="container mt-4">
            <div class="card">
                <div class="card-header">
                    <h1 align="center">Bienvenido ${sessionScope.usuario}</h1><br>
                    <a href="add.jsp" class="btn btn-primary">Agregar Producto</a>
                    <a href="Controlador?accion=logout" class="btn btn-primary">Logout</a>
                    
                </div>
                    
           
                <div class="card-body">
                    <table class="table table-hover" cellspacing="0">
            
            
                <tr> 
                    <th>Codigo</th>
                    <th>Nombre del producto</th>
                    <th>Categoria</th>
                    <th>Stock</th>
                    <th>Precio</th>
                    <th>Acciones</th>
                </tr>
                    <% 
                        ProductoService product = new ProductoService();
                        List <Producto> datos = product.listar();
                        
                        for(Producto p: datos){
                    %>
                <tr>
                    <td> <%= p.getCodigo() %> </td>
                    <td> <%= p.getNombreProducto() %></td>
                    <td> <%= p.getCategoria() %></td>
                    <td> <%= p.getStock() %></td>
                    <td> <%= p.getPrecio()%></td>
                    <td>
                        <a href="Controlador?accion=editar&Codigo=<%= p.getCodigo() %>" class="btn btn-warning">Modificar</a>
                        <a href="Controlador?accion=eliminar&Codigo=<%= p.getCodigo() %>" class="btn btn-danger">Eliminar</a>
                    </td>
                </tr>
                    <%}%>

            </table>
                </div>
            </div>
        </div>
    </body>
</html>

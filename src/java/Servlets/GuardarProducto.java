/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlets;

import Modelo.ProductoDAO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author andre
 */
public class GuardarProducto extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        int Stock=0;
        float Precio = 0;
        
        String nombreProducto = request.getParameter("nombreProducto");
        String Categoria = request.getParameter("Categoria");
        String stock = request.getParameter("Stock");
        String precio = request.getParameter("Precio");
        
        
        if(nombreProducto!=null){
            response.getWriter().println(nombreProducto);
        }else{
            response.getWriter().println("Nombre null");
        }
        
        if(Categoria!=null){
            response.getWriter().println(Categoria);
        }else{
            response.getWriter().println("Categoria null");
        }
        
        
        if(stock!=null){
            Stock = Integer.parseInt(stock);
        }else{
            response.getWriter().println("Stock null");
        }
        if(precio!=null){
            Precio = Float.parseFloat(precio);
            
        }else{
            response.getWriter().println("Precio null");
        }
        
        
        
        
        ProductoDAO producto = new ProductoDAO();
        if(producto.registrar(nombreProducto, Categoria, Stock, Precio)){
            response.getWriter().println("Producto creado exitosamente");
        }else{
            response.getWriter().println("Error al crear producto");
        }
        
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}

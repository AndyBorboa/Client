/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlets;

import Modelo.UsuarioDAO;
import Modelo.ProductoService;
import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author andre
 */
public class Controlador extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    
    String add="add.jsp";
    String edit="edit.jsp";
    String index="index.jsp";
    String listar="listar.jsp";
    String acceso="";
    ProductoService producto = new ProductoService();
    UsuarioDAO user = new UsuarioDAO();
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String accion=request.getParameter("accion");
        
        if(accion.equals("add")){
            acceso=add;
            
        }else if (accion.equals("Guardar")){
            String nombreProducto = request.getParameter("nombreProducto");
            String Categoria = request.getParameter("Categoria"); 
            int Stock = Integer.parseInt(request.getParameter("Stock"));
            float Precio = Float.parseFloat(request.getParameter("Precio"));
            
            producto.agregar(nombreProducto, Categoria, Stock, Precio);
            acceso=listar;
            
        }else if(accion.equals("editar")){
            acceso=edit;
            request.setAttribute("Codigo", request.getParameter("Codigo"));
        }else if(accion.equals("Actualizar")){
            String nombreProducto= request.getParameter("nombreProducto");
            String Categoria= request.getParameter("Categoria");
            int Stock= Integer.parseInt(request.getParameter("Stock"));
            float Precio= Float.parseFloat(request.getParameter("Precio"));
            int Codigo= Integer.parseInt(request.getParameter("Codigo"));
            producto.actualizar(Codigo, nombreProducto, Categoria, Stock, Precio);
            acceso=listar;
            
        }else if(accion.equals("eliminar")){
            int Codigo = Integer.parseInt(request.getParameter("Codigo"));
            producto.eliminar(Codigo);
            acceso=listar;
            
        }else if(accion.equals("logout")){
            HttpSession newsession = request.getSession(false);
            if (newsession != null) 
            {
                newsession.invalidate();
            }
            acceso=index;
        }
        else{
            acceso=listar;
        }
        
        
        
        RequestDispatcher dispatcher= request.getRequestDispatcher(acceso);
        dispatcher.forward(request, response);
        
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

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo;

import webservice.Producto;

/**
 *
 * @author andre
 */
public class ProductoService {
    
    public ProductoService(){
        
    }

    public java.util.List<webservice.Producto> listar() {
        webservice.Servicios_Service service = new webservice.Servicios_Service();
        webservice.Servicios port = service.getServiciosPort();
        return port.listar();
    }

    public String agregar(java.lang.String nombreProducto, java.lang.String categoria, int stock, float precio) {
        webservice.Servicios_Service service = new webservice.Servicios_Service();
        webservice.Servicios port = service.getServiciosPort();
        return port.agregar(nombreProducto, categoria, stock, precio);
    }
    
    public Producto listarClave(int clave) {
        webservice.Servicios_Service service = new webservice.Servicios_Service();
        webservice.Servicios port = service.getServiciosPort();
        return port.listarClave(clave);
    }

    public String actualizar(int clave, java.lang.String nombreProducto, java.lang.String categoria, int stock, float precio) {
        webservice.Servicios_Service service = new webservice.Servicios_Service();
        webservice.Servicios port = service.getServiciosPort();
        return port.actualizar(clave, nombreProducto, categoria, stock, precio);
    }
    
    

    
    
    
    
    
    

    
    
    
    
    
    
}

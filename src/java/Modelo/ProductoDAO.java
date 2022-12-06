/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo;

import Coneccion.Conexion;
import java.sql.PreparedStatement;

/**
 *
 * @author andre
 */
public class ProductoDAO extends Conexion{
    int resp;
    String msj;
    
    public boolean registrar (String nombreProducto, String categoria, int stock, float precio){
        PreparedStatement pst = null;
        
        try{
            String consulta ="insert into productos (nombreProducto,Categoria,Stock,Precio) values (?,?,?,?)";
            pst= getConexion().prepareStatement(consulta);
            pst.setString(1, nombreProducto);
            pst.setString(2, categoria);
            pst.setInt(3, stock);
            pst.setFloat(4, precio);
            
            resp= pst.executeUpdate();
            if(resp==1){
                msj= "Producto Agregado";
                return true;
            }else{
                msj = "Error";
                return false;
            }
            
        }catch(Exception ex){
            
        }finally{
            try{
                if(getConexion()!=null) getConexion().close();
                if(pst!=null) pst.close();
                
            }catch(Exception e){
                System.out.println("Error: " +e);
            }
            
        }
        return false;
    }
     
    
}

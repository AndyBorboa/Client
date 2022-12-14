/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo;

import Coneccion.Conexion;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 *
 * @author andre
 */
public class UsuarioDAO extends Conexion{
    
    public boolean autenticacion (String usuario, String contraseña){
        PreparedStatement pst = null;
        ResultSet rs = null;
        
        
        try{
           String consulta = "select * from usuario where usuario = ? and contraseña = ?"; 
           pst = getConexion().prepareStatement(consulta);
           pst.setString(1, usuario);
           pst.setString(2, contraseña);
           rs = pst.executeQuery();
           
           if(rs.absolute(1)){
               return true;
           }
           
        }catch(Exception e){
            System.out.println("Error: " +e);
        }finally{
            
            try{
                if(getConexion()!=null) getConexion().close();
                if(pst!=null) pst.close();
                if(rs!=null) rs.close();
                
            }catch(Exception e){
                System.out.println("Error: "+e);
            }
                
            
        }
        return false;
     }
    
    public boolean registrarUsuario (String nombreUsuario, String contraseña){
        PreparedStatement pst = null;
        
        try{
            String consulta ="insert into usuario (usuario,contraseña) values (?,?)";
            pst= getConexion().prepareStatement(consulta);
            pst.setString(1, nombreUsuario);
            pst.setString(2, contraseña);
        
            
            
            if(pst.executeUpdate()==1){
                return true;
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

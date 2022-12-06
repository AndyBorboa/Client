package Coneccion;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author andre
 */
public class Pruebas {
    
    public static void main(String[] args) {
    UsuarioDAO co = new UsuarioDAO();
    System.out.println(co.autenticacion("Acertiijo", "mango123"));
    }
    
}

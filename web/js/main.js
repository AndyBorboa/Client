/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

$ (function(){
    
   function validarFields(nombreProducto,Categoria,Stock,Precio){
       if(nombreProducto.length > 1 && nombreProducto.length<=30){
           if(Categoria.length > 1 && Categoria.length<=20){
               if(Stock.length > 0 && Stock.length<=5){
                   if($.isNumeric(Stock)){
                       if(Precio.length>0 && Precio.length<=5){
                           if($.isNumeric(Precio)){
                               
                           }else{
                               alert("Debe ingresar un numero valido");
                               return false;
                           }
                       }else{
                           alert("Ingrese un precio correcto");
                           return false;
                       }
                       return true;
                       
                   }else{
                       alert("Ingrese un numero valido");
                   }
               }else{
                   alert("Ingrese un stock correcto");
               }
           }else{
               alert("La categoria debe tener maximo 20 caracteres");
           }
       }else{
           alert("El nombre del producto debe tener maximo 30 caracteres");
       }
       return false;
   }
   
   $('#btnCrearProducto').click(function(e){
      e.preventDefault();
      var nombreProducto = $('#nombreProducto').val();
      var Categoria = $('#Categoria').val();
      var Stock = $('#Stock').val();
      var Precio = $('#Precio').val();
      
      if(validarFields(nombreProducto,Categoria,Stock,Precio)){
          var data = new FormData($('#frmAdd')[0]);
          $.ajax({
             url : "GuardarProducto",
             type : "post",
             data : data,
             contentType : false,
             processData : false,
             success : function(data){
                 alert(data);
             }
          });
      }
   });
   
});

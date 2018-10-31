

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">         
        <meta name="viewport" content="width=device-width, minimum-scale=1.0, maximum-scale=2.0" />
        
        <link rel="stylesheet" href="/Agenda/css/pavilion.css">
        
    </head>
    <body>
        
        <h3>Editar Contacto</h3>
        
        
            <form action="/Agenda/contactos/guardar" method="post">
                
              
                
                
                <label for="id">Id:</label>              
                <input type="text" name="id"                       
                       readonly="readonly"
                       value="${contacto.id}"
                       >              
                <br>


                
                <label for="nombre">Nombre:</label>     
                <input type="text" name="nombre"                       
                       value="${contacto.nombre}"
                       >
                <br>


                <label for="apellido">Apellido:</label>     
                <input type="text" name="apellido"                        
                       value="${contacto.apellido}"
                       >
                <br>              

                
                                
                <button type="submit" 
                      name="accion"   
                      value="editar"
                      class="button button-default">
                    Editar
               </button>                

                
                
                <button type="submit" 
                      name="accion"   
                      value="cancelar"
                      class="button button-default">
                    Cancelar
               </button>
                
                                
             

            </form>
      

        
    </body>
</html>















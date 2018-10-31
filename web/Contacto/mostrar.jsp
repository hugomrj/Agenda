

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
        
        <h3>Contacto</h3>
        
        
            <form action="/Agenda/contactos" method="post">
                
              
                <label for="id">Id:</label>              
                <input type="text" name="id"                       
                       value="${contacto.id}"
                       disabled>              
                <br>


                <label for="nombre">Nombre:</label>     
                <input type="text" name="nombre"
                       readonly="readonly"
                       value="${contacto.nombre}"
                       disabled>
                <br>


                <label for="apellido">Apellido:</label>     
                <input type="text" name="apellido" 
                       readonly="readonly"
                       value="${contacto.apellido}"
                       disabled>
                <br>              

                                
                <button type="submit" 
                      name="accion_lista"   
                      class="button button-default">
                    Lista
               </button>                

            </form>
      

        
    </body>
</html>















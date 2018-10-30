

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">        
        
        <link rel="stylesheet" href="/Agenda/css/pavilion.css">
        
    </head>
    <body>
        
        <h3>Nuevo Contactos</h3>
        
        
            <form action="/Agenda/contactos/agregar" method="post">
                
              
                <label for="id">Id:</label>              
                <input type="text" name="id">              
                <br>


                <label for="nombre">Nombre:</label>     
                <input type="text" name="nombre" >
                <br>


                <label for="apellido">Apellido:</label>     
                <input type="text" name="apellido" >
                <br>              

                <input type="submit" value="Guardar"   class="button button-default">

            </form>
      

        
    </body>
</html>















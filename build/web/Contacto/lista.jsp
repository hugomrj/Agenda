

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">        
        
        
        <link rel="stylesheet" href="/Agenda/css/pavilion.css">


        
    </head>
    <body>
        
        
        <h3>Lista de Contactos</h3>

        
            
        <a href="/Agenda/contactos/nuevo" class="button" >Agregar contacto</a>        
        
            
            
            <table>
                <thead>
                    <tr>
                        <th>id</th>
                        <th>nombre</th>
                        <th>apellido</th>
                    </tr>
                </thead>
                
                <tbody>
                    <c:forEach items="${contactolista}" var="contactolista">
                
                        <tr>
                            <td><c:out value="${contactolista.id}"/></td>
                            <td><c:out value="${contactolista.nombre}"/></td>
                            <td><c:out value="${contactolista.apellido}"/></td>
                        </tr>
                        
                    </c:forEach>
                </tbody>
                        
            </table>

        
        
    </body>
</html>

















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
        
        
        <h3>Lista de Contactos</h3>
        
        
        <br>
        <a href="/Agenda/contactos/nuevo" >Agregar contacto</a>        
        <br><br>
        
            
            
            <table>
                <thead>
                    <tr>
                        <th>id</th>
                        <th>nombre</th>
                        <th>apellido</th>
                        <th>acciones</th>
                    </tr>
                </thead>
                
                <tbody>
                    <c:forEach items="${contactolista}" var="contactolista">
                
                        <tr>
                            <td><c:out value="${contactolista.id}"/></td>
                            <td><c:out value="${contactolista.nombre}"/></td>
                            <td><c:out value="${contactolista.apellido}"/></td>
                            
                                                        
                            <td>
                                
                                <span class="h6">
                                    <a href="/Agenda/contactos/<c:out value="${contactolista.id}"/>">
                                        mostrar</a></span>
                                        
                                <span class="h6">
                                    <a href="/Agenda/contactos/editar/<c:out value="${contactolista.id}"/>">
                                        editar</a></span>                                        
                                
                                <span class="h6">
                                    <a href="/Agenda/contactos/borrar/<c:out value="${contactolista.id}"/>">
                                        borrar</a></span>                                        
                                
                            </td>

                            
                        </tr>
                        
                    </c:forEach>
                </tbody>
                        
            </table>

        
        
    </body>
</html>















/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package aplicacion.contacto;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author hugo
 */
@WebServlet(name = "ContactoHttpGuardar", 
        urlPatterns = {"/contactos/guardar"})




public class ContactoHttpGuardar extends HttpServlet {


    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
                      
            String accion = request.getParameter("accion").trim();   
            

            
            if (accion.endsWith("cancelar")){
                response.sendRedirect("/Agenda/contactos");
                return;
            }
                    
        
        try {     
                   
            
            String id = request.getParameter("id");
            String nombre = request.getParameter("nombre");
            String apellido = request.getParameter("apellido");
                        

            if (id != null){                    
                ContactoDAO dao = new ContactoDAO();           

                
                if (accion.endsWith("agregar")){
                    dao.insertar(Integer.parseInt(id), nombre, apellido);                       
                }

                
                if (accion.endsWith("editar")){
                    dao.actualizar(Integer.parseInt(id), nombre, apellido);                    
                }
                
            }            
            
            response.sendRedirect("/Agenda/contactos");

            
        } 
        catch (Exception ex) {            
            PrintWriter out = response.getWriter();
            out.println(ex.getMessage());
        }  


    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (Exception ex) {
            Logger.getLogger(ContactoHttpGuardar.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (Exception ex) {
            Logger.getLogger(ContactoHttpGuardar.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}

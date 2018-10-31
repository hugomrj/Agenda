
import aplicacion.contacto.Contacto;
import aplicacion.contacto.ContactoDAO;
import java.util.List;
import utilidades.Conexion;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */




/**
 *
 * @author hugo
 */
public class test {


    
    public static void main(String args[]) throws Exception{
    
            Conexion conexion = new Conexion();
            conexion.conectar();
            
            ContactoDAO dao = new ContactoDAO();
            
            Contacto c = dao.filtrar(10);
            
            System.out.println(c.getNombre());
                        

    }
        
        

}

















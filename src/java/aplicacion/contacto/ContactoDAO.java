
package aplicacion.contacto;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import utilidades.Conexion;

public class ContactoDAO {

        Conexion conexion = new Conexion();
        Statement  statement ;
        ResultSet resultset;          
    

    
    public List<Contacto>  lista ()  {
                
        List<Contacto> lista = new ArrayList<Contacto>(); 

        try {
            
            conexion.conectar();  
            statement = conexion.getConexion().createStatement();              
            
            String sql = "  SELECT id, nombre, apellido   FROM public.contactos  ";
            
            resultset = statement.executeQuery(sql);     
            
            while (resultset.next()) {                               

                Contacto contacto = new Contacto();      
                
                contacto.setId(resultset.getInt("id") );
                contacto.setNombre(resultset.getString("nombre") );
                contacto.setApellido(resultset.getString("apellido") );
                
                lista.add(contacto);
            
            }
        }
        
        catch (Exception ex) {                        
            System.out.println(ex.getMessage());
        }
        
        finally
        {
            conexion.desconectar();                
            return lista ;          
        }
    }      
      
    
    
      
      
    public void insertar (Integer id, String nombre, String apellido ) 
              throws SQLException, Exception{
                
            conexion.conectar();  
            statement = conexion.getConexion().createStatement();   
                        
            String sql = " " +
                " INSERT INTO public.contactos( " +
                "            id, nombre, apellido) " +
                "            VALUES (" + id +", " + 
                "'" +nombre+ "' , '"+apellido+"') " +
                "";            
        
            statement.execute(sql);            
            conexion.desconectar();   
            
    }
        
    
      
    public void actualizar (Integer id, String nombre, String apellido ) 
              throws SQLException, Exception{
                
            conexion.conectar();  
            statement = conexion.getConexion().createStatement();   
                        
            String sql = " " +
                " UPDATE public.contactos " +
                "   SET " +
                "   nombre=   '" +nombre+ "'  , " +
                "   apellido= '" +apellido+ "'  " + 
                " WHERE id =  " + id;            
            
            statement.execute(sql);            
            conexion.desconectar();   
            
    }

      
    public void borrar (Integer id  ) 
              throws SQLException, Exception{
                
            conexion.conectar();  
            statement = conexion.getConexion().createStatement();   
                        
            String sql = " " +
                " delete from public.contactos " +
                " WHERE id =  " + id;            
            
            statement.execute(sql);            
            conexion.desconectar();   
            
    }
            
        
    
    
          
    public Contacto filtrar (Integer cod)  {
        
        Contacto contacto = new Contacto();

        try {
            
            conexion.conectar();  
            statement = conexion.getConexion().createStatement();              
            
            String sql = "  SELECT id, nombre, apellido   FROM public.contactos where id = " + cod ;
            
            resultset = statement.executeQuery(sql);    
            resultset.next();
            
            if (resultset.getRow() != 0) 
            {
                contacto.setId(cod);                
                contacto.setNombre( resultset.getString("nombre") );
                contacto.setApellido(resultset.getString("apellido") );                                          
            }

        }
        
        catch (Exception ex) {                        
            System.out.println(ex.getMessage());
        }
        
        finally
        {
            conexion.desconectar();                
            return contacto ;          
        }
    }          
    
    

    
}

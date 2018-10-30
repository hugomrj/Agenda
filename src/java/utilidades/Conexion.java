/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package utilidades;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DatabaseMetaData;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;



public class Conexion {
    
    static String driver = "org.postgresql.Driver";    
    static String server = "localhost";    
    static String database = "agenda_basedato";    
    public String user = "hugo";    
    public String puerto = "5432";    
    public String password = "12345";    
    public String url = "";  
    public Connection conn = null;


public  void conectar() {
    
    this.url = "jdbc:postgresql://"+this.server+":"+this.puerto+"/"+this.database;  

    
    try {      
        
        Class.forName(Conexion.driver).newInstance();        
        conn = DriverManager.getConnection(url,user,password);
        

        
        if (conn != null)  {
            System.out.println("Conexión a base de datos "+url+" ... Ok");
        }
        
        
    }
    catch(SQLException ex) {      
        System.out.println("Hubo un problema al intentar conectarse con la base de datos "+url);
        System.out.println(ex.getMessage());
        
        
    }
    catch(Exception ex) {
        System.out.println(ex);
    }
}

    public void desconectar(){
        try {
            if ( this.conn.isClosed() == false ){
                this.conn.close();
            }
        } catch (SQLException ex) {
            Logger.getLogger(Conexion.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        
    }

    public Connection getConexion() {
        return conn;
    }
    
    
   
}


















package Control;

import java.sql.*;

public class Conexion {
    
    public static Connection getConnection() {
        
        String url;
        String userName;
        String password;
        
        url = "jdbc:mysql://localhost:3306/softwaredb";
        userName = "root";
        password = "admin";
        
        Connection con = null;
        
        try{
            Class. forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection(url, userName,password);
            
            System.out.println("Conexion OK con BD ");
            
        }catch (Exception e){
            System.out.println("Conexion ERROR con BD ");
            System.out.println(e.getMessage() );
        }
        
        return con;
        
    }
    
}

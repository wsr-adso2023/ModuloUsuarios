

package Control;

import Modelo.Usuario;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;


public class AccionesUsuario {

    public static int registrarUsuario(Usuario e){
        int status = 0;
        try{
            Connection con = Conexion.getConnection();
            String q = "INSERT into usuario(nombres, apellidos, telefono,numeroDocumento,tipoDocumento,cargo,direcResidencia)" + "VALUES (?,?,?,?,?,?,?)";
            PreparedStatement ps = con.prepareStatement(q);

       ps.setString(1,e.getNombres());
       ps.setString(2,e.getApellidos());
       ps.setString(3,e.getTelefono());
       ps.setString(4,e.getNumeroDocumento());
       ps.setString(5,e.getTipoDocumento());
       ps.setString(6,e.getCargo());
       ps.setString(7,e.getDirecResidencia());
       
       status = ps.executeUpdate();
       System.out.println("Registro OK");
       con.close();
            
        } catch (Exception ed){
            System.out.println("Registro ERROR");
            System.out.println(ed.getMessage());
        }
        return status;
    }
    
    // Actualizar Usuario
    public static int actualizarUsuario(Usuario e){
        int status = 0;
        try{
            Connection con = Conexion.getConnection();
            String q = "UPDATE usuario SET nombres = ?, apellidos = ?, telefono = ?, numeroDocumento = ?, tipoDocumento = ?, cargo = ?, direcResidencia = ? WHERE idusuario = ?";
            PreparedStatement ps = con.prepareStatement(q);

       // Usar Getter and settter
       ps.setString(1,e.getNombres());
       ps.setString(2,e.getApellidos());
       ps.setString(3,e.getTelefono());
       ps.setString(4,e.getNumeroDocumento());
       ps.setString(5,e.getTipoDocumento());
       ps.setString(6,e.getCargo());
       ps.setString(7,e.getDirecResidencia());
       ps.setInt(8,e.getIdusuario());
       
       status = ps.executeUpdate();
       System.out.println("Actualizacion OK");
       con.close();
            
        } catch (Exception ed){
            System.out.println("Actualizacion ERROR");
            System.out.println(ed.getMessage());
        }
        return status;
    }
    
    // Eliminar Usuario
    public static int eliminarUsuario(int id){
        int status = 0;
        try{
            Connection con = Conexion.getConnection();
            String q = "DELETE from usuario where idusuario = ?";
            PreparedStatement ps = con.prepareStatement(q);

       ps.setInt(1,id);
       
       
       status = ps.executeUpdate();
       System.out.println("Usuario Eliminado");
       con.close();
            
        } catch (Exception ed){
            System.out.println("Usuario no Eliminado ERROR");
            System.out.println(ed.getMessage());
        }
        return status;
    }
    
    // Buscar Usuario por ID
    public static Usuario buscarUsuario(int id){
        Usuario e = new Usuario();
        try{
            Connection con = Conexion.getConnection();
            String q = "SELECT *  from usuario where idusuario = ?";
            PreparedStatement ps = con.prepareStatement(q);

          ps.setInt(1,id);
          
          ResultSet rs = ps.executeQuery();
          
          if(rs.next()){
              e.setIdusuario(rs.getInt(1));
              e.setNombres(rs.getString(2));
              e.setApellidos(rs.getString(3));
              e.setTelefono(rs.getString(4));
              e.setNumeroDocumento(rs.getString(5));
              e.setTipoDocumento(rs.getString(6));
              e.setCargo(rs.getString(7));
              e.setDirecResidencia(rs.getString(8));
              
          }
      
       System.out.println("Usuario Encontrado Por ID");
       con.close();
            
        } catch (Exception ed){
            System.out.println("Error al Busca el Usuario");
            System.out.println(ed.getMessage());
        }
        return e;
    }
    
    // Listar Todos los Usuario
     public static List<Usuario>listarUsuario(){
         List<Usuario> lista = new ArrayList<Usuario>();
        
        try{
            Connection con = Conexion.getConnection();
            String q = "SELECT *  from usuario";
            PreparedStatement ps = con.prepareStatement(q);

          ResultSet rs = ps.executeQuery();
          
          while(rs.next()){
              Usuario e = new Usuario();
              e.setIdusuario(rs.getInt(1));
              e.setNombres(rs.getString(2));
              e.setApellidos(rs.getString(3));
              e.setTelefono(rs.getString(4));
              e.setNumeroDocumento(rs.getString(5));
              e.setTipoDocumento(rs.getString(6));
              e.setCargo(rs.getString(7));
              e.setDirecResidencia(rs.getString(8));
              
              lista.add(e);
              
          }
         
       System.out.println("Usuarios Encontrado");
       con.close();
            
        } catch (Exception ed){
            System.out.println("Error al listar los Usuarios");
            System.out.println(ed.getMessage());
        }
        return lista;
    }
}

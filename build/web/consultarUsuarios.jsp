<%@page import="java.util.List" %>
<%@page import="Modelo.Usuario" %>
<%@page import="Control.AccionesUsuario" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="style.css">
        <title>Listar Usuarios</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <header>
    <div class="head">
        ?
    </div>
</header>
        <bodypanel>
    <aside>
 <div class="leftcolumn">
          <div class="menu">
           <div class="title">MENU</div>
              <div class="avatar"><img class="imgavatar" src="personAdmin.svg" alt="avatar"></div>
              <div class="rol">ADMINISTRADOR</div>
           <div class="modules">
                     <nav id="menu">
                            <ul>
                                 <li><a href="admin.html">Inicio</a></li>
                                 <li><a href="">Administracion de Usuarios</a>
                                        <ul>
                                  <li><a href="crearUsuario.jsp">Crear Usuario</a></li>
                                  <li><a href="consultarUsuarios.jsp">Buscar Usuario</a></li>
                                  <li><a href=""></a></li>
                                        </ul>
                                  </li>
                                    <li><a href="#">Enlace 3</a></li>
                                    <li><a href="#">Enlace 4</a></li>
                                    <li><a href="#">Enlace 5</a></li>
                            </ul>
                     </nav>
           </div>
              <div class="close">
                  <input class="csbutton" type="button" value="Cerrar Sesion">
             </div>
  </div>    
 </div>
    </aside>
    <article>
        <div class="buscarusuario">
        <table class="table">
            <thead>
                <tr>
                    <th>Nombres</th>
                    <th>Apellidos</th>
                    <th>Telefono</th>
                    <th>Tipo de Documento</th>
                    <th>Número de Documento</th>
                    <th>Cargo</th>
                    <th>Direccion de Residencia</th>
                </tr>
            </thead>
            <tbody>
                <%
               
                    List<Usuario> lista = AccionesUsuario.listarUsuario();
                    for (Usuario e : lista){
               %>
               <tr>
                   <td> <%=e.getNombres()%></td>
                   <td> <%=e.getApellidos()%></td>
                   <td> <%=e.getTelefono()%></td>
                   <td> <%=e.getTipoDocumento()%></td>
                   <td> <%=e.getNumeroDocumento()%></td>
                   <td> <%=e.getCargo()%></td>
                   <td> <%=e.getDirecResidencia()%></td>
                   
                   <td> <a href="actualizarUsuario.jsp?id=<%=e.getIdusuario()%>">Editar</td>
                   <td> <a href="eliminarUsuario?id=<%=e.getIdusuario()%>">Eliminar</td>
               </tr>
               <%                 }
               %>
            </tbody>
        </table>
             </div>
    </article>

    
    </bodypanel>
</html>

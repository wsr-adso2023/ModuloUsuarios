<%@page import="Modelo.Usuario" %>
<%@page import="Control.AccionesUsuario" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="style.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Actualizar Usuario</title>
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
                                  <li><a href="consultarUsuarios.jsp">Listar Usuarios</a></li>
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
                           <form method="post" name="actualizarDatos" action="actualizarUsuario" >
                                                        <table class="tablaUpdate">
                                                        <%
                                                            int id = Integer.parseInt (request.getParameter("id"));
                                                            Usuario e = AccionesUsuario.buscarUsuario(id);
                                                            %>
                                                    <td><input type="hidden" name="idUpdate" value="<%=e.getIdusuario()%>"></td>
                                                <tr>
                                                    <td>Nombres</td>
                                                    <td><input type="text" name="nombresUpdate" value="<%=e.getNombres()%>"></td>
                                                </tr>
                                                <tr>
                                                    <td>Apellidos</td>
                                                    <td><input type="text" name="apellidosUpdate" value="<%=e.getApellidos()%>"></td>
                                                </tr>
                                                <tr>
                                                    <td>Telefono</td>
                                                    <td><input type="text" name="telefonoUpdate" value="<%=e.getTelefono()%>"></td>
                                                </tr>
                                                <tr>
                                                    <td>Tipo de Documento</td>
                                                    <td><select name="tipoDocumentoUpdate" id="">
                                                                <option value="<%=e.getTipoDocumento()%>" >Documento de Identidad</option>
                                                                <option value="Cédula de Ciudadanía">Cédula de Ciudadanía</option>
                                                                <option value="Tarjeta de Identidad">Tarjeta de Identidad</option>
                                                                <option value="Cédula de Extranjería">Cédula de Extranjería</option>
                                                                <option value="Permiso por Protección Temporal">Permiso por Protección Temporal</option>
                                                          </select></td>
                                                </tr>
                                                <tr>
                                                        <td>Número de Documento</td>
                                                        <td><input type="text" name="numeroDocumentoUpdate" value="<%=e.getNumeroDocumento()%>"></td>
                                               </tr>
                                               <tr>
                                                   <td>Cargo</td>
                                                   <td><select name="cargoUpdate" id="">
                                                            <option value="<%=e.getCargo()%>" >Seleccione el Cargo</option>
                                                            <option value="Administrador">Administrador</option>
                                                            <option value="Recepcion y Ventas">Recepcion y ventas</option>
                                                            <option value="Soporte tecnico">Soporte tecnico</option>
                                                            <option value="Bodega">Bodega</option>
                                                    </select></td>
                                               </tr>
                                                <tr>
                                                    <td>Direccion de Residencia</td>
                                                    <td><input type="text" name="direcResidenciaUpdate" value="<%=e.getDirecResidencia()%>"></td>
                                                </tr>
                                                
                                                <tr>
                                                    <td></td>
                                                    <td><input type="submit" value="Actualizar"></td>
                                                </tr>
                                                         
                                                
                                    </table>
                            </form>
                   </article>                            
</html>

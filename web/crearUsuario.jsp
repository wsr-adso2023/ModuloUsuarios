
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="style.css">
    <title>Crear Usuario</title>
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
         <div class="formuser">
                  <form name="registroUsuario" action="agregarUsuario" method="post">
                           <div class="name">
                                      <input placeholder="Nombres" type="text" name="nombres" id="nombres"">
                                      <input placeholder="Apellidos"type="text" name="apellidos" id="apellidos">
                           </div>
                           <div class="selectdni">
                                      <select name="tipoDocumento" id="selectdniuser">
                                            <option value="C�dula de Ciudadan�a">C�dula de Ciudadan�a</option>
                                            <option value="Tarjeta de Identidad">Tarjeta de Identidad</option>
                                            <option value="C�dula de Extranjer�a">C�dula de Extranjer�a</option>
                                            <option value="Permiso por Protecci�n Temporal">Permiso por Protecci�n Temporal</option>
                                      </select>
                                      <input placeholder="N�mero de documento"type="text" name="numeroDocumento" id="dni">
                           </div>
                                    <div class="telefono">
                                      <input placeholder="N�mero de telefono" type="tel" name="telefono" id="telefono">
                                    </div>
                                    <div class="contacto">
                                    <input placeholder="Direccion de recidencia" type="text" name="direcResidencia" id="direccion">
                                    </div>
                           <div class="cargo">
                                    <label for="">Cargo</label>
                                       <select name="cargo" id="cargo">
                                        <option >Seleccione el cargo</option>
                                        <option value="Administrador">Administrador</option>
                                        <option value="Recepcion y ventas">Recepcion y ventas</option>
                                        <option value="Soporte tecnico">Soporte tecnico</option>
                                        <option value="Bodega">Bodega</option>
                                       </select>
                           </div>
                                    <div class="btnreg">
                                    <input type="submit" value="Registrar">
                                    </div>
                  </form>
         </div>
 </article>
</bodypanel>
</html>
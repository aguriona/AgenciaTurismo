<%-- 
    Document   : listarClientes
    Created on : 20 dic. 2021, 17:00:35
    Author     : Augusto
--%>

<%@page import="modelo.Cliente"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Listado de Clientes</title>

	<link rel="stylesheet" href="css/tabla.css">
</head>
<body>
	<div id="main-container">

		<table width="600" border="2">
			<thead>
				<tr>
					<th>Nombre</th>
                                        <th>Apellido</th>
                                        <th>Direccion</th>
                                        <th>DNI</th>
                                        <th>Nacionalidad</th>
                                        <th>Celular</th>
                                        <th>E-mail</th>
                                        <th>Fecha de Nacimiento</th>
                                        <th>Eliminar</th>
				</tr>
			</thead>
                        
                        <%  HttpSession misession = request.getSession();
                            List<Cliente> listaClientes = (List)request.getSession().getAttribute("listaClientes");
                            for(Cliente cli : listaClientes){
                        %>
                            
			<tr>
                            <%String nombre = cli.getNombre(); %>
				<td> <%=nombre %> </td>
                            <%String apellido = cli.getApellido(); %>    
                                <td> <%=apellido %> </td>
                            <%String direccion = cli.getDireccion(); %>    
                                <td> <%=direccion %> </td>
                            <%String dni = cli.getDni(); %>    
                                <td> <%=dni %> </td>
                            <%String nacionalidad = cli.getNacionalidad(); %>    
                                <td> <%=nacionalidad %> </td>
                            <%String celular = cli.getCelular(); %>    
                                <td> <%=celular %> </td>    
                            <%String emial = cli.getEmail(); %>    
                                <td> <%=emial %> </td> 
                            <%String fecha = cli.getFechaNac(); %>    
                                <td> <%=fecha %> </td> 
                            <%Integer id = cli.getId(); %>     
                                <td><form name="eliminarCliente" class="main_form" action="eliminarcliente" method="POST">
                                     <input type="hidden" name="id" value="<%=id %>">
                                     <button type="submit" class="send_btnt" >Eliminar</button>
                                     </form>
                                </td> 
                                <td><form name="modificarCliente" class="main_form" action="SvModificarCliente" method="POST">
                                     <input type="hidden" name="id" value="<%=id %>">
                                     <button type="submit" class="send_btnt" >Modificar</button>
                                     </form>
                                </td> 
			</tr>
		
                        <% } %>
		</table>
	</div>
</body>
</html>
<%@page import="java.util.ArrayList"%>
<%@page import="com.emergentes.modelo.Producto"%>
<%
    ArrayList<Producto>lista=(ArrayList<Producto>)session.getAttribute("listapro");
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
    <center>
        <fieldset style="background-color:Beige;border:6px groove #ccc;width:350px">
        <h1>Lista de Productos</h1>
        </fieldset>
        <fieldset style="background-color:Beige;border:6px groove #ccc;width:350px">
        <a href="PrincipalControlador?op=nuevo">Nuevo</a>
        <br>  <br>  
        <table border='1'>
            <tr>
                <th>Id</th>
                <th>Descripcion</th>
                <th>Cantidad</th>
                <th>Precio</th>
                <th></th>
                <th></th>

            </tr>
            <%
                if(lista!=null){
                    for(Producto item:lista){
                
            %>
            <tr>
                <td><%=item.getId() %></td>
                <td><%=item.getDescripcion()%></td>
                <td><%=item.getCantidad() %></td>
                <td><%=item.getPrecio()%></td>
                <td><a><a href="PrincipalControlador?op=editar&id=<%=item.getId()%>" >Editar</a></td>
                <td><a><a href="PrincipalControlador?op=eliminar&id=<%=item.getId()%>"
                          onclick='return confirm("Esta seguro de eliminar?");'>Eliminar</a></td>
                
            </tr>
            <%
                    }
                }
            %>
        </table>
        </fieldset>
        </center>
    </body>
</html>

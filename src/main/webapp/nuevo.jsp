<%@page import="com.emergentes.modelo.Producto"%>
<%
    Producto item=(Producto)request.getAttribute("miProducto");
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <fieldset style="background-color:Beige;border:6px groove #ccc;width:350px">
        <h1><%=(item.getId()==0)?"Nuevo Producto":"Editar Producto" %></h1>
        <form action="PrincipalControlador" method="post">
        <input type="hidden" name="id" value="<%=item.getId() %>"/>
    <table>
        <tr>
            <td>Descripcion</td>
            <td><input type="text" name="descripcion" value="<%=item.getDescripcion() %>"/></td>
        </tr>
        <tr>
            <td>Cantidad</td>
            <td><input type="text" name="cantidad" value="<%=item.getCantidad() %>"/></td>
        </tr>
        <tr>
            <td>Precio</td>
            <td><input type="text" name="precio" value="<%=item.getPrecio() %>"/></td>
        </tr>
        <tr>
            <td></td>
            <td><input type="submit"  value="Enviar"></td>
        </tr>
    </table>
        </form>
        </fieldset>
    </body>
</html>

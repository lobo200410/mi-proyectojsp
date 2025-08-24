<%-- 
    Document   : operaciones
    Created on : 22 ago 2025, 9:40:34 p. m.
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>

        
        <%

            String opcion = "";
            String n1 = "";
            String n2 = "";

            int num1 = 1, num2 = 2, calculo = 1;

            if (request.getParameter("Procesar") != null) {

                opcion = request.getParameter("opcion");
                n1 = request.getParameter("1");
                n2 = request.getParameter("2");

                try {
                    num1 = Integer.parseInt(n1);
                    num2 = Integer.parseInt(n2);

                    switch (opcion) {
                    
                    case "suma":
                        calculo=num1+num2;
                    break;
                    
                    case "resta":
                        calculo=num1-num2;
                    break;
                    
                    case "multiplicacion":
                        calculo=num1*num2;
                    break;
                    
                    case "division":
                        if(num2==0)
                        {
                            out.print("División entre 0 no existe");
                            calculo=0;
                        }
                        else
                            calculo=num1/num2;
                    break;
                    
                    }

                } catch (Exception e) {
                }
            }


        %>
    </head>
    <body>
        
      <!-- Este es un comentario HTML, sí aparece en el código fuente -->

    <center><h1>Operaciones</h1></center>
    <form method="POST">
        <table border="1">
            <thead>
                <tr>
                    <th>Digite una opción</th>
                    <th><input type="type" name="opcion"></th>
                </tr>
            </thead>
            <tbody>

                <tr>
                    <td>Digite el primer número</td>
                    <td><input type="number" name="1"></td>
                </tr>
                <tr>
                    <td>Digite el segundo número</td>
                    <td><input type="number" name="2"></td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" value="Procesar" name="Procesar"></td>
                </tr>

                <%                    if (request.getParameter("Procesar") != null) {
                %>
                <tr>
                    <td>El primer número es :</td>
                    <td><%=n1%></td>
                </tr>
                <tr>
                    <td>El segundo número es:</td>
                    <td><%=n2%></td>
                </tr>
                <tr>
                    <td>El resultado es</td>
                    <td><%=calculo%></td>

                </tr> 

                <%
                    }
                %>
            </tbody>
        </table>
    </form>
</body>
</html>

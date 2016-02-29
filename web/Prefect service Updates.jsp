<%-- 
    Document   : Prefect Detail Updates
    Created on : Oct 7, 2014, 8:57:00 PM
    Author     : Mr.Mic
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <%

           // String uid = (String) session.getAttribute("useID");
           if (session.getAttribute("useID") == null) {
                RequestDispatcher rd = request.getRequestDispatcher("/index.jsp");
                rd.forward(request, response);
            }
            

        %>
        <center>
        <h1>Prefect details Updations</h1>
        
        
        <br><br>
        <h3>Add service</h3>
        <form action="addService" method="post">
            <table>
                <tr>
                    <td>
                        Service ID
                    </td>
                    <td>
                        <input type="text" name="ServiseID">
                    </td>
                </tr>
                <tr>
                    <td><b>Service Name</b></td>
                    <td><input type="text" name="ServiseName"></td>
                </tr>
                <tr>
                    <td>Discription</td>
                    <td>
                        <input type="text" name="Discription">
                    </td>
                </tr>
                
            </table>
            <input type="submit" value="Add servise">
        </form>
        
        <form action="deleteService" method="post">
            <table>
                <tr>
                    <td>
                        Service ID
                    </td>
                    <td>
                        <input type="text" name="ServiseID">
                    </td>
                </tr>
                
            </table>
            <input type="submit" value="delete servise">
        </form>
        
        <br><br>
        <h3>Add service for Prefect</h3>
        <form action="addServiceForPrefect" method="post">
            <table>
                <tr>
                    <td>
                        Service ID
                    </td>
                    <td>
                        <input type="text" name="ServiseID">
                    </td>
                </tr>
                <tr>
                    <td>
                        Prefect ID
                    </td>
                    <td>
                        <input type="text" name="PrefectID">
                    </td>
                </tr>
                <tr>
                    <td>
                        Date
                    </td>
                    <td>
                        <input type="text" name="Date">
                    </td>
                </tr>
                <tr>
                    <td>Marks</td>
                    <td><input type="text" name="Marks"></td>
                </tr>
                <tr>
                    <td>Is Assigned</td>
                    <td>
                        <input type="text" name="Assigned">
                    </td>
                </tr>
                
            </table>
            <input type="submit" value="Add Servise to Prefect">
        </form>
        
        
        <br><br>
        <h3>Remove service for Prefect</h3>
        <form action="RemoveServiceForPrefect" method="post">
            <table>
                <tr>
                    <td>
                        Service ID
                    </td>
                    <td>
                        <input type="text" name="ServiseID">
                    </td>
                </tr>
                <tr>
                    <td>
                        Prefect ID
                    </td>
                    <td>
                        <input type="text" name="PrefectID">
                    </td>
                </tr>
                <tr>
                    <td>
                        Date
                    </td>
                    <td>
                        <input type="text" name="Date">
                    </td>
                </tr>
               
            </table>
            <input type="submit" value="Remove Servise from Prefect">
        </form>
        <br><br>
        <a href="addPrefectBehaviors.jsp">add Prefect Behaviors</a>
        
        <br><br>
        <a href="removePrefectBehaviors.jsp">Remove Prefect Behaviors</a>
        
        
        
        </center>
        
        
    </body>
</html>

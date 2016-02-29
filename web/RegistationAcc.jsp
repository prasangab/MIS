<%-- 
    Document   : RegistationAcc
    Created on : Sep 7, 2014, 9:48:56 AM
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
        <h1>Accountent Registation</h1>
        <br>
        <form action="AccRegistation" method="post">
            <table>
                <tr>
                    <td>
                        New user ID
                    </td>
                    <td>
                        <input type="text" name="ouID">
                    </td>
                </tr>
                <tr>
                    <td><b>Registration_Date</b></td>
                    <td><input type="date" name="Reg_Date" value="" ></td>
                </tr>
                <tr>
                    <td>Staff ID</td>
                    <td>
                        <input type="text" name="stfID">
                    </td>
                </tr>
                
            </table>
            <input type="submit" value="Add Accountent">
        </form>
        </center>
    </body>
</html>

<%-- 
    Document   : UserManagement
    Created on : Oct 8, 2014, 4:03:59 PM
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

            String x1 = (String) session.getAttribute("useID");
            if (x1 == null) {
                RequestDispatcher rd = request.getRequestDispatcher("/index.jsp");
                rd.forward(request, response);
            }

        %>
    <center>
        <h1>Admin Home Page <%=x1%></h1>

        <!-- Create a table to design the page layout>-->
        <a href="addUser.jsp">add user</a>


       



        <form action="adminSearchUser" method="post">
            <h2>Please enter user id for search Student</h2>


            <table>
                <tr>
                    <td>
                        Enter user ID
                    </td>
                    <td>
                        <input type="text" name="uid">
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td>
                        <input type="submit"  Value="Search">
                    </td>
                </tr>
            </table>
        </form>

        <form action="admUpdateUser" method="post">
            <h2>Please enter user id for search Student</h2>


            <table>
                <tr>
                    <td>
                        Enter user ID
                    </td>
                    <td>
                        <input type="text" name="uid">
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td>
                        <input type="submit"  Value="Update">
                    </td>
                </tr>
            </table>
        </form>

        <br>
        <br>

        <h2>Reset member Password</h2>
        <form action="AdmResetMemberPassword" method="post">
            <table>
                <tr>
                    <td>
                        Enter user ID
                    </td>
                    <td>
                        <input type="text" name="uid">
                    </td>
                </tr>
            </table>
            <input type="submit" value="Reset password">
        </form>
        <br><br>
        <a href="removeUser.jsp"> Delete User</a>
        
    </center>
    </body>
</html>

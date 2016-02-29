<%-- 
    Document   : removeClassInfo
    Created on : Oct 9, 2014, 2:38:05 PM
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
        <h1>Student  details management</h1>

        <br><br>
        <h3>Add class information</h3>
        <form action="removeClassInfor" method="post">
            <table>
                <tr>
                    <td>
                        Student ID
                    </td>
                    <td>
                        <input type="text" name="StudentID">
                    </td>
                </tr>
                <tr>
                    <td>Grade</td>
                    <td><input type="text" name="Grade"></td>
                </tr>
            </table>
            <input type="submit" value="remove Class info">
        </form>
    </center>
</body>
</html>

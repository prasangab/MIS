<%-- 
    Document   : get course details
    Created on : Oct 18, 2014, 2:50:50 PM
    Author     : hp
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
        <h1>comity  details management</h1>

        <br><br>
        <h3>Add comity</h3>
        <form action="getcoursedetails" method="post">
            <table>
                <tr>
                    <td>
                        course ID
                    </td>
                    <td>
                        <input type="text" name="courseID">
                    </td>
                </tr>
               
                
            </table>
            <input type="submit" value="Add servise">
        </form>
    </center>
        
    </body>
</html>

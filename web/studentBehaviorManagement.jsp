<%-- 
    Document   : studentBehaviorManagement
    Created on : Oct 8, 2014, 5:28:47 PM
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
        <h1>Student behavior management</h1>


        <a href="addstudentBehavior.jsp">add student Behavior</a>
        <br><br>
        <a href="RemoveStudentBehavior.jsp">Remove student Behavior</a>

        <br><br>
        <a href="addClassInfo.jsp">add Class Information</a>
        <br><br>
        <a href="removeClassInfo.jsp">remove Class Information</a>

    </center>
</body>
</html>

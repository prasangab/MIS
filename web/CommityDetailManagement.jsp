<%-- 
    Document   : CommityDetailManagement
    Created on : Oct 9, 2014, 2:50:26 PM
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
        <h1>comity Management</h1>
         <br><br>
        <a href="addComity.jsp">add Comity</a>
         <br><br>
        <a href="RemoveComity.jsp">Remove Comity</a>
        <br><br>
        <a href="addComityMember.jsp">add Comity Member</a>
         <br><br>
        <a href="RemoveComityMember.jsp">Remove Comity Member</a>
        <br><br>
        <a href="addComityDissision.jsp">add Comity Dissision</a>
         <br><br>
        <a href="RemoveComityDissision.jsp">Remove Comity Dissision</a>
        
        </center>
    </body>
</html>

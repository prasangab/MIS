<%-- 
    Document   : names
    Created on : Oct 26, 2014, 9:54:09 AM
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
            String x =(String)request.getAttribute("names");
        %>
        <h1><%=x%></h1>
    </body>
</html>

<%-- 
    Document   : downloardResourses
    Created on : Sep 19, 2014, 11:06:06 PM
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

            String uid = (String) session.getAttribute("useID");
            if (session.getAttribute("useID") == null) {
                RequestDispatcher rd = request.getRequestDispatcher("/index.jsp");
                rd.forward(request, response);
            }
            

        %>
        <center>
        <h1>Download Resourse!</h1>
        
        <form action="UploadDownloadFileServlet" method="get" enctype="multipart/form-data">
            Select File to Upload:<input type="text" name="fileName">
            <br>
            <input type="submit" value="downloard">
        </form>
        </center>
        
    </body>
</html>

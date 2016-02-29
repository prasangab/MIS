<%-- 
    Document   : addResourse
    Created on : Sep 19, 2014, 11:01:32 PM
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
        <h1>add resorse!</h1>
        
        <form action="UploadDownloadFileServlet" method="post" enctype="multipart/form-data">
            Select File to Upload:<input type="file" name="fileName">
            <br>
            <input type="submit" value="Upload">
        </form>
        </center>
    </body>
</html>

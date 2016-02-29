<%-- 
    Document   : Invalid
    Created on : Sep 4, 2014, 8:00:08 PM
    Author     : Mr.Mic
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" type="text/css" href="UI_Parts/mystyle_Aplication.css">
        <!-- jQuery library -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>

        <script>
            $(function () {
                $("#header").load("UI_Parts/commen_header.jsp");
                $("#nav").load("UI_Parts/nav2.jsp");
                $("#footer").load("UI_Parts/footer.jsp");
                //  $("#wrap").load("UI_Parts/rci_menue.jsp");
            });
        </script>
    </head>
    <body>
        <%
            String msg = (String) request.getAttribute("massage");
        %>

        <div id="container">
            <div id="header">
                <!-- outer file -->
            </div>
            <div id="nav">
                <!-- outer file -->
            </div>
            <div id="section" >
                <div id="wrap" >
                    <!-- outer file -->
                </div>



                <div id="content_container">
                    <center>
                    <h3 style="color: red">process is not success </h3>

                    <p ><%=msg%></p>
                    <br><br><br><br>
                    <a href="Main Login.jsp"><img src="Images/back_button.png" width="80" height="80"></a>
                    </center>
                </div>

            </div>
            <div id="footer">
                <!-- outer file -->
            </div>
        </div>
    </body>
</html>

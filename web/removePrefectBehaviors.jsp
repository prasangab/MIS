<%-- 
    Document   : removePrefectBehaviors
    Created on : Oct 8, 2014, 5:14:40 PM
    Author     : Mr.Mic
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
       <link rel="stylesheet" type="text/css" href="UI_Parts/mystyle_Aplication.css">
   
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>

        <script>
            $(function () {
                $("#header").load("UI_Parts/pbi_header.jsp");
                $("#nav").load("UI_Parts/nav.jsp");
                $("#footer").load("UI_Parts/footer.jsp");
                $("#wrap").load("UI_Parts/pbi_menu.jsp");
            });
        </script>
    </head>
    <body>
        
         
            <%

                String x1 = (String) session.getAttribute("useID");
                if (x1 == null) {
                    RequestDispatcher rd = request.getRequestDispatcher("/index.jsp");
                    rd.forward(request, response);
                }

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
        <h1>Remove Prefect Behavior</h1>

        <br><br>
        <h3>Add service</h3>
        <form action="RemovePrfBehaviorReport" method="post">
            <table>
                <tr>
                    <td>
                        Prefect ID
                    </td>
                    <td>
                        <input type="text" name="PrefectID">
                    </td>
                </tr>
                <tr>
                    <td>Term</td>
                    <td><input type="text" name="Term"></td>
                </tr>
                <tr>
                    <td>Year</td>
                    <td>
                        <input type="text" name="Year">
                    </td>
                </tr>
            </table>
            <input type="submit" value="Add servise">
        </form>
    </center>
                </div>
                 </div>
            <div id="footer">
                <!-- outer file -->
            </div>
        </div>
    </body>
</html>


       
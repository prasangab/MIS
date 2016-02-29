<%-- 
    Document   : logoutPage
    Created on : Oct 8, 2014, 7:50:24 AM
    Author     : Mr.Mic
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head >
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" type="text/css" href="UI_Parts/mystyle_Aplication.css">
        <!-- jQuery library -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>

        <script>
            $(function () {
              //  $("#header").load("UI_Parts/rci_header.jsp");
                $("#nav").load("UI_Parts/nav.jsp");
                $("#footer").load("UI_Parts/footer.jsp");
             //   $("#wrap").load("UI_Parts/rci_menue.jsp");
            });
        </script>
        <SCRIPT type="text/javascript">
            window.history.forward();
            function noBack() {
                window.history.forward();
            }
        </SCRIPT>


        <script>
            function goBack() {
                window.history.back()
            }
        </script>
    </head>
    <body onload="noBack();" onpageshow="if (event.persisted) noBack();" onunload="" >

        <%

            String x1 = (String) session.getAttribute("useID");
            if (x1 == null) {
                RequestDispatcher rd = request.getRequestDispatcher("/index.jsp");
                rd.forward(request, response);
            }

        %>
        <div id="container">
            <div id="header">
                <table width="100%" border="0" cellpadding="0" cellspacing="0" bgcolor="#254a6e" >
                    <tr>
                        <td>
                            <img src="uper1.jpg" width="300">
                        </td>
                        <td>
                            <h1 style="color: #FFF">Log Out </h1>
                        </td>

                        <td align="right">


                            <h3> <a href="logoutPage.jsp" style="color: #FFF">(LogOut)</a></h3> 
                        </td>
                    </tr>
                </table>
            </div>

            <div id="nav">
                <!-- outer file -->
            </div>
            <div id="section">


                <div id="wrap">


                </div>

                <div id="content_container">
                    <center>
                        <form action="LogOut" method="post">


                            <h2 style="color: red">Thank You for Using Siri Vajiraghana Dahampasala Information Management System</h2>
                            <input type="submit" value="Log Out" > 

                        </form>
                        <button onclick="goBack()">Cancel</button>
                        <button onclick="goBack()">Cancel</button>
                    </center>
                </div>

            </div>

            <div id="footer">
                Copyright © SirivajiraghanaDahamPasala.com
            </div>
        </div>

















    </body>
</html>

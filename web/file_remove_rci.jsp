<%-- 
    Document   : file_remove_rci
    Created on : Jan 17, 2015, 6:17:46 AM
    Author     : Mr.Mic
--%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>File Upload to Database Demo</title>
        <link rel="stylesheet" type="text/css" href="UI_Parts/mystyle_Aplication.css">

        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>

        <script>
            $(function () {
                $("#header").load("UI_Parts/rci_header.jsp");
                $("#nav").load("UI_Parts/nav.jsp");
                $("#footer").load("UI_Parts/footer.jsp");
                $("#wrap").load("UI_Parts/rci_menue.jsp");
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
                        <h3>File Remove from Database</h3>
                        <form method="post" action="removeFile_all" >
                            <table border="0">
                                <tr>
                                    <td>File or Multimedia ID </td>
                                    <td><input type="text" name="id" size="50"/></td>
                                </tr>
                                <tr>
                                    <td colspan="2">
                                        <input type="submit" value="Remove">
                                    </td>
                                </tr>
                            </table>
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
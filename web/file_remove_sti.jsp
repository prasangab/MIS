<%-- 
    Document   : file_remove_sti
    Created on : Jan 17, 2015, 5:30:41 PM
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
                $("#header").load("UI_Parts/sti_header.jsp");
                $("#nav").load("UI_Parts/nav.jsp");
                $("#footer").load("UI_Parts/footer.jsp");
                $("#wrap").load("UI_Parts/sti_menue.jsp");
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

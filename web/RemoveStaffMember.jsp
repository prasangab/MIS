<%-- 
    Document   : RemoveStaffMember
    Created on : Oct 25, 2014, 8:29:14 PM
    Author     : dell
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

                if (session.getAttribute("useID") == null) {
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


                    <form action="AdmDeleteMember" method="post">
                        <h3>Delete Staff Member</h3>
                        <table>

                            <tr>
                                <td>
                                    Enter User ID
                                </td>
                                <td>
                                    <input type="text" name="uid">
                                </td>
                            </tr>
                        </table>
                        <input type="submit" value="Delete Member">
                    </form>
                </div>
            </div>
            <div id="footer">
                <!-- outer file -->
            </div>
        </div>
    </body>
</html>

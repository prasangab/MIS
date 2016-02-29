<%-- 
    Document   : RegistationPbi
    Created on : Sep 7, 2014, 10:48:21 AM
    Author     : Mr.Mic
--%>

<%@page import="com.MIS.lib.IDGenorator"%>
<%@page import="com.MIS.lib.DateGenarator"%>
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
                $("#header").load("UI_Parts/rci_header.jsp");
                $("#nav").load("UI_Parts/nav.jsp");
                $("#footer").load("UI_Parts/footer.jsp");
                $("#wrap").load("UI_Parts/rci_menue.jsp");
            });
        </script>
        </head>
        <body >

            <%

                if (session.getAttribute("useID") == null) {
                    RequestDispatcher rd = request.getRequestDispatcher("/index.jsp");
                    rd.forward(request, response);
                }

                IDGenorator idg = new IDGenorator();
                DateGenarator dg = new DateGenarator();
                String ID = idg.getPBIID();
                String today = dg.getToday();
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
                        <h3>Prefect Board In-charge Registration</h3>
                        <br>
                        <form action="PbiRegistation" method="post">
                            <table>
                                <tr>
                                    <td>
                                        New User ID
                                    </td>
                                    <td>
                                        <input type="text" name="ouID" value="<%=ID%>" required>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Registration Date</td>
                                    <td><input type="text" name="Reg_Date" value="<%=today%>" required></td>
                                </tr>
                                <tr>
                                    <td>Staff ID</td>
                                    <td>
                                        <input type="text" name="stfID" required>
                                    </td>
                                </tr>

                            </table>
                            <input type="submit" value="Add">
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


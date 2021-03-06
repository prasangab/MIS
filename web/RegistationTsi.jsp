<%-- 
    Document   : RegistationTsi
    Created on : Sep 7, 2014, 10:58:04 AM
    Author     : Mr.Mic
--%>

<%@page import="com.MIS.lib.DateGenarator"%>
<%@page import="com.MIS.lib.IDGenorator"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Tsi Registration</title>
       <link rel="stylesheet" type="text/css" href="UI_Parts/mystyle_Aplication.css">
        <!-- jQuery library -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>

        <script>
            $(function () {
                $("#header").load("UI_Parts/tsiheader.jsp");
                $("#nav").load("UI_Parts/nav.jsp");
                $("#footer").load("UI_Parts/footer.jsp");
                $("#wrap").load("UI_Parts/tsi_menue.jsp");
            });
        </script>
        </head>
        <body>
            <%              // String uid = (String) session.getAttribute("useID");
                if (session.getAttribute("useID") == null) {
                    RequestDispatcher rd = request.getRequestDispatcher("/index.jsp");
                    rd.forward(request, response);
                }

                IDGenorator idg = new IDGenorator();
                DateGenarator dg = new DateGenarator();
                String ID = idg.getTSSID();
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


                    <h2>Thurunusaviya In-charge Registration</h2>


                    <form action="TSIRegistation_TSI" method="post">
                        <table>
                            <tr>
                                <td>
                                    New user ID
                                </td>
                                <td>
                                    <input type="text" name="ouID" value="<%=ID%>" required>
                                </td>
                            </tr>
                            <tr>
                                <td>Registration Date</td>
                                <td><input type="text" name="Reg_Date" value="<%=today%>" required ></td>
                            </tr>
                            <tr>
                                <td>Staff ID</td>
                                <td>
                                    <input type="text" name="stfID" required>
                                </td>
                            </tr>

                        </table>
                        <br>
                        <input type="submit" value="Add">
                    </form>

                </div>

            
    </body>
</html>

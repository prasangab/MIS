<%-- 
    Document   : tssBehaviorReports
    Created on : 28-Oct-2014, 19:20:15
    Author     : Prasanga
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
                $("#header").load("UI_Parts/tss_header.jsp");
                $("#nav").load("UI_Parts/nav.jsp");
                $("#footer").load("UI_Parts/footer.jsp");
                $("#wrap").load("UI_Parts/tss_menue.jsp");
            });
        </script>
        </head>
        <body>
            <%                        String x1 = (String) session.getAttribute("useID");
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

                    <form action="TSI-One-StudentBehavior-TssIDYear.jsp" target="_blank">
                        <p><b>Get Student Behavior Reports</b></p>
                        <table>

                            <tr>
                                <td>
                                    Tss ID
                                </td>
                                <td>
                                    <input type="text" name="TSSID" >

                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Year
                                </td>
                                <td>
                                    <input type="text" name="year" >

                                </td>
                                <td>
                                    <input type="submit" value="Genarate">
                                </td>
                            </tr>
                        </table>
                    </form>
                    <br>

                    <form action="TSI-One-StaffBehavior-StaffIDYear.jsp" target="_blank">
                        <p><b>Get Staff Behavior Reports</b></p>
                        <table>

                            <tr>
                                <td>
                                    Staff ID
                                </td>
                                <td>
                                    <input type="text" name="StfId" >

                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Year
                                </td>
                                <td>
                                    <input type="text" name="Year" >

                                </td>
                                <td>
                                    <input type="submit" value="Genarate">
                                </td>
                            </tr>
                        </table>
                    </form>
                    <br>

                </div>

            </div>
            <div id="footer">
                <!-- outer file -->
            </div>
        </div>
    </body>
</html>


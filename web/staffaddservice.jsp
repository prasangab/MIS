<%-- 
    Document   : Staff service Updates
    Created on : Oct 8, 2014, 5:29:56 AM
    Author     : Mr.Mic
--%>

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
                $("#header").load("UI_Parts/sti_header.jsp");
                $("#nav").load("UI_Parts/nav.jsp");
                $("#footer").load("UI_Parts/footer.jsp");
                $("#wrap").load("UI_Parts/sti_menue.jsp");
            });
        </script>
        </head>
        <body>
            <%

                // String uid = (String) session.getAttribute("useID");
                if (session.getAttribute("useID") == null) {
                    RequestDispatcher rd = request.getRequestDispatcher("/index.jsp");
                    rd.forward(request, response);
                }

                DateGenarator dg = new DateGenarator();
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
                   
                    <h3>Add service for Staff</h3>
                    <form action="addServiceForStaff" method="post">
                        <table>
                            <tr>
                                <td>
                                    Service ID
                                </td>
                                <td>
                                    <input type="text" name="ServiseID" required>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Staff ID
                                </td>
                                <td>
                                    <input type="text" name="StaffID" required>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Date
                                </td>
                                <td>
                                    <input type="text" name="Date" value="<%=today%>">
                                </td>
                            </tr>
                            <tr>
                                <td>Marks</td>
                                <td><input type="text" name="Marks"></td>
                            </tr>
                            <tr>
                                <td>Is Assigned</td>
                                <td>
                                    <input type="text" name="Assigned">
                                </td>
                            </tr>

                        </table>
                        <input type="submit" value="Add">
                    </form>


                 
                </div></div>



       </div>
            <div id="footer">
                <!-- outer file -->
            </div>
        </div>
    </body>
</html>




<%-- 
    Document   : rciClassReports
    Created on : 28-Oct-2014, 16:32:07
    Author     : Prasanga
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
     
       
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Research Center In-Charge Profile</title>
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
        <body>
            <%                    String x1 = (String) session.getAttribute("useID");
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
                    <form action="Student-One-ClassBehavior-StuIDYear.jsp" target="_blank">
                        <h3>The report created by teacher based on student behavior</h3>
                        <table>

                            <tr>
                                <td>
                                    Student ID
                                </td>
                                <td>
                                    <input type="text" name="StuID" >

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

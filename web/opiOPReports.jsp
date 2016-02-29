<%-- 
    Document   : opiOPReports
    Created on : 26-Oct-2014, 17:00:03
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
                $("#header").load("UI_Parts/stu_header.jsp");
                $("#nav").load("UI_Parts/nav.jsp");
                $("#footer").load("UI_Parts/footer.jsp");
                $("#wrap").load("UI_Parts/stu_menue.jsp");
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

                    <br>
                    <p><b>Want to get OldPupil list?</b></p>
                    <a href="OPI-all-OldboyList-Non.jsp" target="_blank">Get Old Pupils</a>
                    <br>


                    <br>
                    <p><b>Want to get Old Pupil Contacts?</b></p>
                    <a href="OPI-all-contacts-non.jsp" target="_blank">Get Old Pupils Contacts</a>
                    <br>
                    <br>

                    <form action="OPI-one-personalDetails-OBID.jsp" target="_blank">
                        <p><b>Get All Personal Details</b></p>
                        <table>
                            <tr>
                                <td>
                                    OB ID
                                </td>
                                <td>
                                    <input type="text" name="OBID" >

                                </td>
                                <td>
                                    <input type="submit" value="Genarate">
                                </td>
                            </tr>
                        </table>
                    </form>


                </div>

            </div>
            <div id="footer">
                <!-- outer file -->
            </div>
        </div>
    </body>
</html>

<%-- 
    Document   : prfPersonalDetails
    Created on : 25-Oct-2014, 10:36:53
    Author     : Prasanga
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>prfPersonalDetails</title>
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

                    <form action="Prefect-One-PersonalData-PrefectID.jsp" target="_blank">
                        <p><b>Get Personal Details</b></p>
                        <table>
                            <tr>
                                <td>
                                    Prefect ID
                                </td>
                                <td>
                                    <input type="text" name="PrefectID" >

                                </td>
                                <td>
                                    <input type="submit" value="Genarate">
                                </td>
                            </tr>
                        </table>
                    </form>
                    <br>

                    <form action="PrefectIncharge-All-PrefectList-Year.jsp" target="_blank">
                        <p><b>Get Personal Details</b></p>
                        <table>
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


                </div>

             </div>
            <div id="footer">
                <!-- outer file -->
            </div>
        </div>
    </body>
</html>

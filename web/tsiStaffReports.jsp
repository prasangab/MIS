<%-- 
    Document   : tsiStaffReports
    Created on : 26-Oct-2014, 08:38:08
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
                $("#header").load("UI_Parts/tsiheader.jsp");
                $("#nav").load("UI_Parts/nav.jsp");
                $("#footer").load("UI_Parts/footer.jsp");
                $("#wrap").load("UI_Parts/tsi_menue.jsp");
            });
        </script>

        </head>
        <body>
            <%
                    
                 if(session.getAttribute("useID") == null){
                 RequestDispatcher rd = request.getRequestDispatcher("/index.jsp");
                 rd.forward(request, response);}
                 
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

                    <form action="TSI-All-Staff-CourseIDYear.jsp" target="_blank">
                        <p><b>Get Staff Details</b></p>
                        <table>
                            <tr>
                                <td>
                                    Course ID
                                </td>
                                <td>
                                    <input type="text" name="CourseID" >

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

                    <form action="TSI-One-StaffBehavior-StaffID.jsp" target="_blank">
                        <p><b>Get Staff Behavior Details</b></p>
                        <table>

                            <tr>
                                <td>
                                    Staff ID
                                </td>
                                <td>
                                    <input type="text" name="StaffID" >

                                </td>
                                <td>
                                    <input type="submit" value="Genarate">
                                </td>
                            </tr>
                        </table>
                    </form>
                    <br>

                    <form action="TSI-One-StaffBehavior-StaffIDYear.jsp" target="_blank">
                        <p><b>Get Staff Behavior Details</b></p>
                        <table>
                            <tr>
                                <td>
                                    Staff Id
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

                    <form action="TSI-all-TSStaff-Year.jsp" target="_blank">
                        <p><b>Get Staff Behavior Details</b></p>
                        <table>

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
                Copyright © SiriWajiraghanaDahamPasala.com
            </div>
        </div>

    </body>
</html>

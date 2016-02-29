<%-- 
    Document   : tsiCourseReports
    Created on : 25-Oct-2014, 15:07:51
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

                    <br>
                    <p><b>Want to get All Courses?</b></p>
                    <a href="TSI-All-Course-Non.jsp" target="_blank">Get All Courses</a>
                    <br>
                    
                    <br>
                    <p><b>Want to get All Projects?</b></p>
                    <a href="Tsi-all-project-non.jsp" target="_blank">Get All Projects</a>
                    <br>
                    <br>

                    <form action="TSI-All-tssbehavior-StuID.jsp" target="_blank">
                        <p><b>Get Course Details</b></p>
                        <table>

                            <tr>
                                <td>
                                    Tss ID
                                </td>
                                <td>
                                    <input type="text" name="TssID" >

                                </td>
                                <td>
                                    <input type="submit" value="Genarate">
                                </td>
                            </tr>
                        </table>
                    </form>
                    <br>

                    <form action="TSI-One-Project-ProjectID.jsp" target="_blank">
                        <p><b>Get Course Details</b></p>
                        <table>

                            <tr>
                                <td>
                                    Project ID
                                </td>
                                <td>
                                    <input type="text" name="ProjectID" >

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
                Copyright © SiriWajiraghanaDahamPasala.com
            </div>
        </div>

    </body>
</html>

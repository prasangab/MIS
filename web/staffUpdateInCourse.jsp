<%-- 
    Document   : staffUpdateInCourse
    Created on : 22-Oct-2014, 09:57:26
    Author     : Prasanga
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Staff Update in Course</title>
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
                
                 // String uid = (String) session.getAttribute("useID");
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

                    <center>
                        <h3>Update Staff in Thurunusaviya Course</h3>
                        <form action="#" method="post">
                            <table>
                                <tr>
                                    <td>
                                        Staff ID
                                    </td>
                                    <td>
                                        <input type="text" name="StaffID" required>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Course ID</td>
                                    <td><input type="text" name="CourseID" required></td>
                                </tr>
                                <tr>
                                    <td>Year</td>
                                    <td>
                                        <input type="text" name="Year" required>
                                    </td>
                                </tr>


                            </table>
                            <br>
                            <input type="submit" value="Update Details">
                        </form>
                    </center>
                </div>

           </div>

            <div id="footer">
                Copyright © SiriWajiraghanaDahamPasala.com
            </div>
        </div>

    </body>
</html>


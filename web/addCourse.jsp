<%-- 
    Document   : addCourse
    Created on : Oct 11, 2014, 6:49:33 AM
    Author     : Mr.Mic
--%>

<%@page import="com.MIS.lib.DateGenarator"%>
<%@page import="com.MIS.lib.IDGenorator"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
       <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Course</title>
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

                String x1 = (String) session.getAttribute("useID");
                if (x1 == null) {
                    RequestDispatcher rd = request.getRequestDispatcher("/index.jsp");
                    rd.forward(request, response);
                }

                IDGenorator idg = new IDGenorator();
                DateGenarator dg = new DateGenarator();
                String ID = idg.getCourseID();
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
                    
                    <h3>Add Course</h3>
                    
                    <form action="addCourse" method="post">
                        <table>
                            <tr>
                                <td>
                                    Course ID
                                </td>
                                <td>
                                    <input type="text" name="courseID" value="<%=ID%>" readonly required>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Course Name
                                </td>
                                <td>
                                    <input type="text" name="CourseName" required>
                                </td>
                            </tr>
                            <tr>
                                <td>Description</td>
                                <td><input type="text" name="Discription"></td>
                            </tr>
                            <tr>
                                <td>Syllabus</td>
                                <td>
                                    <input type="text" name="Sylabus">
                                </td>
                            </tr>

                        </table>
						<br>
                        <input type="submit" value="Add">
                    </form>
                    
                </div><!--close content_container-->
            </div>

            <div id="footer">
                Copyright © SiriWajiraghanaDahamPasala.com
            </div>
        </div>

    </body>
</html>

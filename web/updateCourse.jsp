<%-- 
    Document   : updateCourse
    Created on : Oct 11, 2014, 7:17:19 AM
    Author     : Mr.Mic
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update Course</title>
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

                  
                 if (session.getAttribute("useID") == null) {
                 RequestDispatcher rd = request.getRequestDispatcher("/index.jsp");
                 rd.forward(request, response);
                 }
                 

                String courseID = (String) request.getAttribute("courseID");
                String CourseName = (String) request.getAttribute("CourseName");
                String Discription = (String) request.getAttribute("Discription");
                String Sylabus = (String) request.getAttribute("Sylabus");

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

                        <h3>Update Course</h3>
                        
                        <form action="SubmitUpdateCourse" method="post">
                            <table>
                                <tr>
                                    <td>
                                        Course ID
                                    </td>
                                    <td>
                                        <input type="text" name="courseID" value="<%= courseID%>" readonly required>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        Course Name
                                    </td>
                                    <td>
                                        <input type="text" name="CourseName"  value="<%= CourseName%>" readonly required>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Description</td>
                                    <td><input type="text" name="Discription"  value="<%= Discription%>"></td>
                                </tr>
                                <tr>
                                    <td>Syllabus</td>
                                    <td>
                                        <input type="text" name="Sylabus"  value="<%= Sylabus%>">
                                    </td>
                                </tr>

                            </table>
                                    <br>
                            <input type="submit" value="Update">
                        </form>
                    </center>
                    

                </div><!--close content_container-->


             </div>

            <div id="footer">
                Copyright © SiriWajiraghanaDahamPasala.com
            </div>
        </div>

    </body>
</html>

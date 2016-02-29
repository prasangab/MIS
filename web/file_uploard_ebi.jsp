<%-- 
    Document   : file_uploard_ebi
    Created on : Jan 17, 2015, 4:53:34 PM
    Author     : Mr.Mic
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
                $("#header").load("UI_Parts/ebi_header.jsp");
                $("#nav").load("UI_Parts/nav.jsp");
                $("#footer").load("UI_Parts/footer.jsp");
                $("#wrap").load("UI_Parts/ebi_menue.jsp");
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

                    
                    <center>
                        <h3>File Upload to Database</h3>
                        <form method="post" action="uploadFile_all" enctype="multipart/form-data">
                            <table border="0">
                                <tr>
                                    <td>File Name: </td>
                                    <td><input type="text" name="name" size="50"/></td>
                                </tr>
                                <tr>
                                    <td>extention: </td>
                                    <td><input type="text" name="extention" size="50"/></td>
                                </tr>
                                <tr>
                                    <td>Access: </td>
                                    <td>
                                        <select name="access">
                                            <option value="Public">Public</option>
                                            <option value="Student">Student</option>
                                            <option value="Parent">Parent</option>
                                            <option value="Prefect">Prefect</option>
                                            <option value="Old Pupil">Old Pupil</option>
                                            <option value="Staff">Staff</option>
                                            <option value="OU">Operational User</option>

                                        </select>
                                    <td>
                                </tr>
                                <tr>
                                    <td>Type </td>
                                    <td>
                                        <select name="type">
                                            <option value="File">File</option>
                                            <option value="Audio">Audio</option>
                                            <option value="Video">Video</option>
                                            <option value="Photo">Photo</option>

                                        </select>
                                    </td>
                                    <!--   <td><input type="text" name="type" size="50"/></td> -->
                                </tr>
                                <tr>
                                    <td>Portrait Photo: </td>
                                    <td><input type="file" name="photo" size="50"/></td>
                                </tr>
                                <tr>
                                    <td colspan="2">
                                        <input type="submit" value="Save">
                                    </td>
                                </tr>
                            </table>
                        </form>
                    </center>

                </div>

             </div>
            <div id="footer">
                <!-- outer file -->
            </div>
        </div>
    </body>
</html>
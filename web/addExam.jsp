<%-- 
    Document   : addExam
    Created on : Sep 25, 2014, 1:27:07 PM
    Author     : Mr.Mic
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Ebi Home</title>
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
            <%            /*     // String uid = (String) session.getAttribute("useID");
                 if (session.getAttribute("useID") == null) {
                 RequestDispatcher rd = request.getRequestDispatcher("/index.jsp");
                 rd.forward(request, response);
                 }
                 */

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
                        <h3>Add Exam</h3>

                        <form action="addExam" method="post">
                            <table>
                                <tr>
                                    <td>
                                        Exam ID
                                    </td>
                                    <td>
                                        <input type="text" name="exmID">
                                    </td>
                                </tr>
                                <tr>
                                    <td>Grade</td>
                                    <td><input type="text" name="Grade" value="" ></td>
                                </tr>
                                <tr>
                                    <td>Exam Name </td>
                                    <td>
                                        <input type="text" name="exmName">
                                    </td>
                                </tr>
                                <tr>
                                    <td>Subject</td>
                                    <td>
                                        <input type="text" name="Subject">
                                    </td>
                                </tr>

                            </table>
                            <br>
                            <input type="submit" value="Add Exam">
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

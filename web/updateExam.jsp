<%-- 
    Document   : updateExam
    Created on : Sep 25, 2014, 2:09:04 PM
    Author     : Mr.Mic
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update Exam</title>
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

                      // String uid = (String) session.getAttribute("useID");
                 if (session.getAttribute("useID") == null) {
                 RequestDispatcher rd = request.getRequestDispatcher("/index.jsp");
                 rd.forward(request, response);
                 }
                 
                String examID = (String) request.getAttribute("examID");
                String Grade = (String) request.getAttribute("Grade");
                String ExamName = (String) request.getAttribute("ExamName");
                String Subject = (String) request.getAttribute("Subject");

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
                        <h3>Update Exam</h3>

                        <form action="SubmitUpdateExam" method="post">
                            <table>
                                <tr>
                                    <td>
                                        Exam ID
                                    </td>
                                    <td>
                                        <input type="text" name="exmID" value="<%=examID%>">
                                    </td>
                                </tr>
                                <tr>
                                    <td>Grade</td>
                                    <td><input type="text" name="Grade" value="<%=Grade%>" ></td>
                                </tr>
                                <tr>
                                    <td>Exam Name</td>
                                    <td>
                                        <input type="text" name="exmName" value="<%=ExamName%>">
                                    </td>
                                </tr>
                                <tr>
                                    <td>Subject</td>
                                    <td>
                                        <input type="text" name="Subject" value="<%=Subject%>">
                                    </td>
                                </tr>

                            </table>
                            <br>
                            <input type="submit" value="Update Exam">
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

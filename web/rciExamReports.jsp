<%-- 
    Document   : rciExamReports
    Created on : 29-Oct-2014, 03:57:00
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
                $("#header").load("UI_Parts/rci_header.jsp");
                $("#nav").load("UI_Parts/nav.jsp");
                $("#footer").load("UI_Parts/footer.jsp");
                $("#wrap").load("UI_Parts/rci_menue.jsp");
            });
        </script>

        </head>
        <body>
            <%                    String x1 = (String) session.getAttribute("useID");
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

                   
                    <h3>Want to get All Exam Results?</h3>
                    <a href="ExamBranch-All-Exams-non.jsp" target="_blank">Get All Exams</a>
                    <br>
                    <br>

                    <form action="ExamBranch-AllinGrade-Exam-Grade.jsp" target="_blank">
                        <h3>Get All Exams in Grade</h3>
                        <table>
                            <tr>
                                <td>
                                    Grade
                                </td>
                                <td>
                                    <input type="text" name="Grade" >

                                </td>
                                <td>
                                    <input type="submit" value="Genarate">
                                </td>
                            </tr>
                        </table>
                    </form>
                    <br>
                    <form action="ExamBranch-All-ExamResults-StudentID.jsp" target="_blank">
                        <h3>Get All result of a Student</h3>
                        <table>
                            <tr>
                                <td>
                                    Student ID
                                </td>
                                <td>
                                    <input type="text" name="StudentID">
                                </td>
                                <td>
                                    <input type="submit" value="Genarate">
                                </td>
                            </tr>
                        </table>
                    </form>

                    <br>
                    <form action="ExamBrnach-All-ExamResult-ExamId-Year.jsp" target="_blank">
                        <h3>Get All result of a Student by using exam id and year</h3>
                        <table>
                            <tr>
                                <td>
                                    Exam ID
                                </td>
                                <td>
                                    <input type="text" name="ExamID">
                                </td>
                            </tr>

                            <tr>
                                <td>
                                    Year
                                </td>
                                <td>
                                    <input type="text" name="Year">
                                </td>

                                <td>
                                    <input type="submit" value="Genarate">
                                </td>
                            </tr>
                        </table>
                    </form>
                    <br>
                    
                    <form action="ExamBranch-One-ExamResult-StudentIDExamID.jsp" target="_blank">
                        <h3>Get Exams result Report</h3>
                        <table>
                            <tr>
                                <td>
                                    Student ID
                                </td>
                                <td>
                                    <input type="text" name="StudentID" >

                                </td>
                            </tr>

                            <tr>
                                <td>
                                    Exam ID
                                </td>
                                <td>
                                    <input type="text" name="ExamID" >

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

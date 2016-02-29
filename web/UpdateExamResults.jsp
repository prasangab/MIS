<%-- 
    Document   : UpdateExamResults
    Created on : Sep 25, 2014, 6:35:10 PM
    Author     : Mr.Mic
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update Exam Results</title>
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

                /*    // String uid = (String) session.getAttribute("useID");
                 if (session.getAttribute("useID") == null) {
                 RequestDispatcher rd = request.getRequestDispatcher("/index.jsp");
                 rd.forward(request, response);
                 }   */

                String StuID = (String) request.getAttribute("StuID");
                String ExamID = (String) request.getAttribute("ExamID");
                String IndexNumber = (String) request.getAttribute("IndexNumber");
                String Result = (String) request.getAttribute("Result");
                String Chance = (String) request.getAttribute("Chance");
                String Year = (String) request.getAttribute("Year");


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
                        <h3>Update Exam Result</h3>

                        <form action="SubmitUpdateExamResult" method="post">
                            <table>
                                <tr>
                                    <td>
                                        Student ID
                                    </td>
                                    <td>
                                        <input type="text" name="StuID" value="<%=StuID%>">
                                    </td>
                                </tr>
                                <tr>
                                    <td>Exam ID</td>
                                    <td><input type="text" name="ExamID" value="<%=ExamID%>"></td>
                                </tr>
                                <tr>
                                    <td>Index Number</td>
                                    <td>
                                        <input type="text" name="IndexNumber" value="<%=IndexNumber%>"> 
                                    </td>
                                </tr>
                                <tr>
                                    <td>Result</td>
                                    <td>
                                        <input type="text" name="Result" value="<%=Result%>">
                                    </td>
                                </tr>
                                <tr>
                                    <td>Chance</td>
                                    <td>
                                        <input type="text" name="Chance" value="<%=Chance%>">
                                    </td>
                                </tr>
                                <tr>
                                    <td>Year</td>
                                    <td>
                                        <input type="text" name="Year" value="<%=Year%>">
                                    </td>
                                </tr>

                            </table>
                            <br>
                            <input type="submit" value="Update Result">
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

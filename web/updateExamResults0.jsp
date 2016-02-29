<%-- 
    Document   : newjspupdateExamResults0
    Created on : 17-Oct-2014, 06:31:50
    Author     : Prasanga
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
                /*   
                 if(session.getAttribute("useID") == null){
                 RequestDispatcher rd = request.getRequestDispatcher("/index.jsp");
                 rd.forward(request, response);}
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
                        <h3>Update Result</h3>

                        <form action="UpdateExamResults" method="post">
                            <table>
                                <tr>
                                    <td>
                                        Student ID
                                    </td>
                                    <td>
                                        <input type="text" name="StuID">
                                    </td>
                                </tr>
                                <tr>
                                    <td>Exam ID</td>
                                    <td><input type="text" name="ExamID" ></td>
                                </tr>
                                <tr>
                                    <td>Year</td>
                                    <td>
                                        <input type="text" name="Year">
                                    </td>
                                </tr>

                            </table>
                            <br>
                            <input type="submit" value="Update Results">
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

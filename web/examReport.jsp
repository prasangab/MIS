<%-- 
    Document   : examReport
    Created on : 24-Oct-2014, 11:02:58
    Author     : Prasanga
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>examReport</title>
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

                    <br>
                    <h3>All exam details held in dhamma school</h3>
                    
                   <a href="ExamBranch-All-Exams-non.jsp" target="_blank">Get all </a>
                    <br>
                    <br>

                    <form action="ExamBranch-AllinGrade-Exam-Grade.jsp" target="_blank">
                        <p><b>Get All Exams in Grade</b></p>
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

                </div>

            
             </div>
            <div id="footer">
                <!-- outer file -->
            </div>
        </div>
    </body>
</html>
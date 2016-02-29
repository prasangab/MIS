<%-- 
    Document   : Exam Details
    Created on : Oct 8, 2014, 7:38:53 AM
    Author     : Mr.Mic
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%

            String x1 = (String) session.getAttribute("useID");
            if (x1 == null) {
                RequestDispatcher rd = request.getRequestDispatcher("/index.jsp");
                rd.forward(request, response);
            }

        %>
    <center>
        <h1>Exam Area</h1>

        <h3>Add Exam</h3>
        <br><br>
        <a href="addExam.jsp">Add Exam</a>

        <br><br>
        <h3>Update Exam</h3>
        <form action="UpdateExam" method="post">
            <input type="text" name="examID">
            <input type="submit" value="update">
        </form>


        <br><br>
        <h3>Delete Exam</h3>
        <form action="DeleteExam" method="post">
            <input type="text" name="examID">
            <input type="submit" value="delete">
        </form>
        <br><br>
        <a href="addExamResult.jsp">Add Exam result</a>

        <br><br>
        <h3>Update Exam Results</h3>
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
                    <td><b>Exam ID</b></td>
                    <td><input type="text" name="ExamID" ></td>
                </tr>
                <tr>
                    <td>Year</td>
                    <td>
                        <input type="text" name="Year">
                    </td>
                </tr>

            </table>
            <input type="submit" value="Update">
        </form>

        <br><br>
        <h3>Delete Exam Results</h3>
        <form action="DeleteExamResults" method="post">
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
                    <td><b>Exam ID</b></td>
                    <td><input type="text" name="ExamID" ></td>
                </tr>
                <tr>
                    <td>Year</td>
                    <td>
                        <input type="text" name="Year">
                    </td>
                </tr>

            </table>
            <input type="submit" value="Delete">
        </form>

    </center>
</body>
</html>

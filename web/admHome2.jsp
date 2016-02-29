<%-- 
    Document   : admHome2
    Created on : Oct 29, 2014, 5:39:57 AM
    Author     : Mr.Mic
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>admHome</title>

    </head>
    <body >
        <%

            String x1 = (String) session.getAttribute("useID");
            if (x1 == null) {
                RequestDispatcher rd = request.getRequestDispatcher("/index.jsp");
                rd.forward(request, response);
            }

        %>

    <center>

        <br><br>
        <a href="UserManagement.jsp">User Management</a>

        <br><br>
        <a href="get course details.jsp">get course details</a>

        <br><br>
        <a href="addResourse.jsp">add recourse</a>

        <br><br>
        <a href="downloardResourses.jsp">download recourse</a>

        <br><br>
        <form action="viweOUProfile" method="post">

            <input type="submit" value="Personal Data">
        </form>



        <br><br>
        <a href="studentBehaviorManagement.jsp">student Behavior Management</a>

        <br><br>
        <a href="ReportsForStudent.jsp">Student Reports</a>

        <br><br>
        <a href="Prefect service Updates.jsp">Prefect service Updates</a>

        <br><br>
        <a href="Staff service Updates.jsp">Staff service Updates</a>


        <br><br>
        <a href="Exam Details.jsp">Exam Details Updates</a>

        <br><br>
        <a href="CommityDetailManagement.jsp">Commity Detail Management</a>
        
        <br><br>
        <a href="TSSDetailManagement.jsp">TSS Detail Management</a>

        <br><br>
        <a href="logoutPage.jsp">logoutPage</a>

        <br><br>
        <a href="PasswordChange.jsp">change Password</a>




    </center>
</body>

</html>


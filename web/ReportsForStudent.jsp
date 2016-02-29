<%-- 
    Document   : ReportsForStudent
    Created on : Sep 21, 2014, 9:30:54 PM
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
        <h1>Student Reports!</h1>
       
        <h3>Student-All-PersonalDetails-non</h3>
        <form action="Student-All-PersonalDetails-non.jsp">
            <h3>Test Report</h3>
            <input type="submit" value="PDF">
        </form>
        <br><br>
        <h3>Student-One-PersonalDetails-StudentID</h3>
        <form action="Student-One-PersonalDetails-StudentID.jsp">
            <h3>all Student Data sheet</h3>
            <input type="text" name="studentID" >
            <input type="submit" value="PDF">
        </form>
        
        <br><br>
        <h3>Student-AllInClass-PersonalDetails-GradeClass</h3>
        <form action="Student-AllInClass-PersonalDetails-GradeClass.jsp">
            <h3>all Student Data sheet</h3>
            <input type="text" name="Grade" >
            <input type="text" name="Class" >
            <input type="submit" value="PDF">
        </form>
        
        <br><br>
        <h3>Student-AllInGrade-PersonalDetails-GradeYear</h3>
        <form action="Student-AllInGrade-PersonalDetails-GradeYear.jsp">
            <h3>all Student Data sheet</h3>
            <input type="text" name="Grade" >
            <input type="text" name="Year" >
            <input type="submit" value="PDF">
        </form>
        
        <br><br>
        <h3>Student-AllinClass-PersonalDetails-GradeClassYear</h3>
        <form action="Student-AllinClass-PersonalDetails-GradeClassYear.jsp">
            <h3>all Student Data sheet</h3>
            <input type="text" name="Grade" >
            <input type="text" name="Class" >
            <input type="text" name="Year" >
            <input type="submit" value="PDF">
        </form>
        
         <br><br>
        <h3>Student-One-ExamResult-StuIdExamID</h3>
        <form action="Student-One-ExamResult-StuIdExamID.jsp">
            <h3>all Student Data sheet</h3>
            <input type="text" name="StuID" >
            <input type="text" name="ExamID" >
            <input type="submit" value="PDF">
        </form>
        
        
        
        <br><br>
        <h3>Student-One-ClassBehavior-StuIDYear</h3>
        <form action="Student-One-ClassBehavior-StuIDYear.jsp">
            <h3>all Student Data sheet</h3>
            <input type="text" name="StuID" >
            <input type="text" name="Year" >
            <input type="submit" value="PDF">
        </form>
        
        <br><br>
        <h3>Student-One-Parentreport-StuIDYear</h3>
        <form action="Student-One-Parentreport-StuIDYear.jsp">
            <h3>all Student Data sheet</h3>
            <input type="text" name="StuID" >
            <input type="text" name="Year" >
            <input type="submit" value="PDF">
        </form>
        
        <br><br>
        <h3>Student-One-AllResults-StuID</h3>
        <form action="Student-One-AllResults-StuID.jsp">
            <h3>all Student Data sheet</h3>
            <input type="text" name="StuID" >
            
            <input type="submit" value="PDF">
        </form>
        
        <br><br>
        <h3>Student-One-AllParentReports-StuID</h3>
        <form action="Student-One-AllParentReports-StuID.jsp">
            <h3>all Student Data sheet</h3>
            <input type="text" name="StuID" >
           
            <input type="submit" value="PDF">
        </form>
        
        <br><br>
        <h3>Student-One-AllMarks-StuID</h3>
        <form action="Student-One-AllMarks-StuID.jsp">
            <h3>all Student Data sheet</h3>
            <input type="text" name="StuID" >
            
            <input type="submit" value="PDF">
        </form>
        
        <br><br>
        <h3>Student-AllinGradel-PersonalDetails-Grade</h3>
        <form action="Student-AllinGradel-PersonalDetails-Grade.jsp">
            <h3>all Student Data sheet</h3>
            <input type="text" name="Grade" >
            <input type="submit" value="PDF">
        </form>
        
        <br><br>
        <h3>Prefect-One-PrefectQulities-prefectID</h3>
        <form action="Prefect-One-PrefectQulities-prefectID.jsp">
            <h3>all Student Data sheet</h3>
            <input type="text" name="prefectId" >
            <input type="submit" value="PDF">
        </form>
        
    </body>
</html>

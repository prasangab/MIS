<%-- 
    Document   : viewCourseDetails.jsp
    Created on : Oct 18, 2014, 3:38:27 PM
    Author     : hp
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
                String CourseID= (String) request.getAttribute("courseID");
                String courseName= (String) request.getAttribute("courseName");
                String courseDes= (String) request.getAttribute("courseDes");
                String courseSyllabus= (String) request.getAttribute("courseSyllabus");
            %>
            <p>courseID=<%=CourseID%>  </p> 
            <p>courseName=<%=courseName%>  </p> 
            <p>courseDes=<%=courseDes%>  </p> 
            <p>courseSyllabus=<%=courseSyllabus%>  </p> 
            
    </body>
</html>

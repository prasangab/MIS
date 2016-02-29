<%-- 
    Document   : Student-All-PersonalDetails-non
    Created on : Sep 23, 2014, 8:59:26 AM
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
        <%@page import="com.MIS.lib.DataBaseManagement"%>
<%@page import="net.sf.jasperreports.engine.JasperRunManager"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.io.File"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="net.sf.jasperreports.engine.*"%>
        
        <%
            Connection conn = null;
            String id = request.getParameter("stuID");
            DataBaseManagement dbm = new DataBaseManagement();
            conn = dbm.setConnetction();
            
            File reportFile = new File(application.getRealPath("/reports/Student-All-PersonalDetails-non.jasper"));//your report_name.jasper file
           // Map parameters = new HashMap();
           // parameters.put("stuID",id);
            byte[] bytes = JasperRunManager.runReportToPdf((String)reportFile.getPath(), null , conn);
            response.setContentType("application/pdf");
            response.setContentLength(bytes.length);
            ServletOutputStream outStream = response.getOutputStream();
            outStream.write(bytes, 0, bytes.length);
            outStream.flush();
            outStream.close();%>
           
    </body>
</html>

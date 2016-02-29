<%-- 
    Document   : addTSSProject
    Created on : Oct 14, 2014, 9:17:13 PM
    Author     : Mr.Mic
--%>

<%@page import="com.MIS.lib.DateGenarator"%>
<%@page import="com.MIS.lib.IDGenorator"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>TSS Detail Management</title>
<link rel="stylesheet" type="text/css" href="UI_Parts/mystyle_Aplication.css">
        <!-- jQuery library -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>

        <script>
            $(function () {
                $("#header").load("UI_Parts/tsiheader.jsp");
                $("#nav").load("UI_Parts/nav.jsp");
                $("#footer").load("UI_Parts/footer.jsp");
                $("#wrap").load("UI_Parts/tsi_menue.jsp");
            });
        </script>
        </head>
        <body>
            <%               // String uid = (String) session.getAttribute("useID");
                 if (session.getAttribute("useID") == null) {
                 RequestDispatcher rd = request.getRequestDispatcher("/index.jsp");
                 rd.forward(request, response);
                 }
                 

            %>

             <%

                String x1 = (String) session.getAttribute("useID");
                if (x1 == null) {
                    RequestDispatcher rd = request.getRequestDispatcher("/index.jsp");
                    rd.forward(request, response);
                }

                IDGenorator idg = new IDGenorator();
                DateGenarator dg = new DateGenarator();
                String ID = idg.getProjectID();
                String today = dg.getToday();
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


                        <h3>Add Project </h3>
                        <form action="addProjects" method="post">
                            <table>
                                <tr>
                                    <td>
                                        Project ID
                                    </td>
                                    <td>
                                        <input type="text" name="ProjectID" value="<%=ID%>" readonly required>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Project Name</td>
                                    <td><input type="text" name="ProjectName" required=""></td>
                                </tr>

                                <tr>
                                    <td>Project Report</td>
                                    <td><input type="text" name="Projectreport"></td>
                                </tr>
                                <tr>
                                    <td>
                                        Project ppt
                                    </td>
                                    <td>
                                        <input type="text" name="ProjectPPT">
                                    </td>
                                </tr>
                                <tr>
                                    <td>Description</td>
                                    <td>
                                        <input type="text" name="Discription">
                                    </td>
                                </tr>


                            </table>
                            <input type="submit" value="Add Project">
                        </form>
                    </center>
                </div>

            </div>

            <div id="footer">
                Copyright © SiriWajiraghanaDahamPasala.com
            </div>
        </div>

    </body>
</html>

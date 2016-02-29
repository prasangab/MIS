<%-- 
    Document   : updateProject1
    Created on : Oct 15, 2014, 5:34:53 AM
    Author     : Mr.Mic
--%>

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
            <%

                 // String uid = (String) session.getAttribute("useID");
                 if (session.getAttribute("useID") == null) {
                 RequestDispatcher rd = request.getRequestDispatcher("/index.jsp");
                 rd.forward(request, response);
                 }
                 
                String ProjectID = (String) request.getAttribute("ProjectID");
                String ProjectName = (String) request.getAttribute("ProjectName");
                String Projectreport = (String) request.getAttribute("Projectreport");
                String ProjectPPT = (String) request.getAttribute("ProjectPPT");
                String Discription = (String) request.getAttribute("Discription");


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

                        <h3>Update Project </h3>
                        <form action="submitUpdateProjects" method="post">
                            <table>
                                <tr>
                                    <td>
                                        Project ID
                                    </td>
                                    <td>
                                        <input type="text" name="ProjectID" value="<%=ProjectID%>" required readonly>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Project Name</td>
                                    <td><input type="text" name="ProjectName" value="<%=ProjectName%>" required readonly></td>
                                </tr>

                                <tr>
                                    <td>Project Report</td>
                                    <td><input type="text" name="Projectreport" value="<%=Projectreport%>" ></td>
                                </tr>
                                <tr>
                                    <td>
                                        Project ppt
                                    </td>
                                    <td>
                                        <input type="text" name="ProjectPPT" value="<%=ProjectPPT%>">
                                    </td>
                                </tr>
                                <tr>
                                    <td>Description</td>
                                    <td>
                                        <input type="text" name="Discription" value="<%=Discription%>">
                                    </td>
                                </tr>


                            </table>
                            <br>
                            <input type="submit" value="Update">
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

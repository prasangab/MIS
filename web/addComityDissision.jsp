<%-- 
    Document   : addComityDissision
    Created on : Oct 9, 2014, 4:03:24 PM
    Author     : Mr.Mic
--%>

<%@page import="com.MIS.lib.IDGenorator"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
          <link rel="stylesheet" type="text/css" href="UI_Parts/mystyle_Aplication.css">
        <!-- jQuery library -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>

        <script>
            $(function () {
                $("#header").load("UI_Parts/sti_header.jsp");
                $("#nav").load("UI_Parts/nav.jsp");
                $("#footer").load("UI_Parts/footer.jsp");
                $("#wrap").load("UI_Parts/sti_menue.jsp");
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


                 IDGenorator idg = new IDGenorator();

                String ID = idg.getComityID();
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



                    <h3>Add Committee Decision</h3>

                    <form action="addComittyDissison" method="post">
                        <table>
                            <tr>
                                <td>
                                    Decision ID
                                </td>
                                <td>
                                    <input type="text" name="DisisonID" value="<%=ID%>" readonly required>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Committee ID
                                </td>
                                <td>
                                    <input type="text" name="comityID" required>
                                </td>
                            </tr>
                            <tr>
                                <td>Year</td>
                                <td><input type="text" name="year" required></td>
                            </tr>
                            <tr>
                                <td>Subject</td>
                                <td>
                                    <input type="text" name="Subject">
                                </td>
                            </tr>

                            <tr>
                                <td>Description</td>
                                <td>
                                    <input type="text" name="Discription">
                                </td>
                            </tr>

                        </table>
                        <input type="submit" value="Add">
                    </form>

                </div>
            </div>
            <div id="footer">
                <!-- outer file -->
            </div>
        </div>
    </body>
</html>

<h1>comity  details management</h1>


</body>
</html>

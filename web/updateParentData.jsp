<%-- 
    Document   : updateParentData
    Created on : Sep 21, 2014, 4:06:39 PM
    Author     : Mr.Mic
--%>

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
                $("#header").load("UI_Parts/rci_header.jsp");
                $("#nav").load("UI_Parts/nav.jsp");
                $("#footer").load("UI_Parts/footer.jsp");
                $("#wrap").load("UI_Parts/rci_menue.jsp");
            });
        </script>
        </head>
        <body>
            <%
                if (session.getAttribute("useID") == null) {
                    RequestDispatcher rd = request.getRequestDispatcher("/index.jsp");
                    rd.forward(request, response);
                }

                String p1 = (String) request.getAttribute("p1");
                String p2 = (String) request.getAttribute("p2");
                String p3 = (String) request.getAttribute("p3");
                String p4 = (String) request.getAttribute("p4");
                String p5 = (String) request.getAttribute("p5");
                String p6 = (String) request.getAttribute("p6");
                String p7 = (String) request.getAttribute("p7");
                String p8 = (String) request.getAttribute("p8");
                String p9 = (String) request.getAttribute("p9");
                String p10 = (String) request.getAttribute("p10");
                String p11 = (String) request.getAttribute("p11");
                String p12 = (String) request.getAttribute("p12");
                String p13 = (String) request.getAttribute("p13");
                String p14 = (String) request.getAttribute("p14");
                String p15 = (String) request.getAttribute("p15");
                String p16 = (String) request.getAttribute("p16");
                String p17 = (String) request.getAttribute("p17");
                String p18 = (String) request.getAttribute("p18");
                 String p19 = (String) request.getAttribute("p19");
                String p20 = (String) request.getAttribute("p20");
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
                    <h3>Update Parent </h3>

                    <!--The registration form for the users -->
                    <form action="SubmitUpdateParent"  method="post">

                        <table>
                            <tr>
                                <td>Parent ID</td>
                                <td><input type="text" name="Id" value="<%=p1%>" size="50" readonly></td>
                            </tr>
                           
                            <tr>
                                <td>Full Name</td>
                                <td><input type="text" name="Full_Name" value="<%=p4%><%=p5%>" size="50" readonly></td>
                            </tr>
                            
                            <tr>
                                <td>Address</td>
                                <td><input type="text" name="Address" value="<%=p11%>" size="50">
                                </td>
                            </tr><tr>
                                <td>Land Phone</td>
                                <td><input type="text" name="Land_Phone" value="<%=p12%>" size="50"></td>
                            </tr>
                            <tr>
                                <td>Mobile Phone 1</td>
                                <td><input type="text" name="Mobile_Phone1" value="<%=p13%>" size="50"></td>
                            </tr>
                            <tr>
                                <td>Mobile Phone 2</td>
                                <td><input type="text" name="Mobile_Phone2" value="<%=p14%>" size="50"></td>
                            </tr>
                            <tr>
                                <td>Fax</td>
                                <td><input type="text" name="Fax" value="<%=p15%>" size="50"></td></tr>
                            <tr>
                                <td>Email</td>
                                <td><input type="email" name="email" value="<%=p16%>" placeholder="@gmail.com" size="50"></td>
                            </tr>

                            <tr>
                                <td>Occupation</td>
                                <td><input type="text" name="occupation" value="<%=p18%>"  size="50"></td>
                            </tr>
                            <tr>
                                <td>Office Phone</td>
                                <td><input type="text" name="office_phone" value="<%=p19%>"  size="50"></td>
                            </tr>
                            <tr>
                                <td>Office address</td>
                                <td><input type="text" name="Office_address" value="<%=p20%>"  size="50"></td>
                            </tr>

                        </table>

                        <center><input type="submit" Value="Update" name="Submit"></center>
                        <br><br>

                    </form>
                </div>

              </div>
            <div id="footer">
                <!-- outer file -->
            </div>
        </div>
    </body>
</html>

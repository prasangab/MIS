<%-- 
    Document   : updateOldBoyData
    Created on : Sep 21, 2014, 4:39:38 PM
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

                    <h1>Update Old Pupil</h1>
                    <form action="SubmitUpdateOldBoy" method="post">
                        <table>
                            <tr>
                                <td>Old Pupil Id</td>
                                <td><input type="text" name="obId" value="<%= p1%>" readonly ></td>
                            </tr>
                            <tr>
                                <td>Student Id</td>
                                <td><input type="text" name="stuId" value="<%= p2%>" readonly></td>
                            </tr>


                            <tr>
                                <td>Registration Date</td>
                                <td><input type="text" value="<%= p3%>"  name="Reg_Date" readonly></td>
                            </tr>
                            <tr>
                                <td>Occupation</td>
                                <td><input type="text" name="occupation" value="<%= p4%>"  ></td>
                            </tr>

                            <tr>
                                <td>Office Phone</td>
                                <td><input type="text" name="office_phone" value="<%= p5%>"  ></td>
                            </tr>
                            <tr>
                                <td>Office Address</td>
                                <td><input type="text" name="Office_address" value="<%= p6%>"  ></td>
                            </tr>
                            <tr>
                                <td>
                                    Educational Qualifications
                                </td>
                                <td>
                                    <input type="checkbox" name="education1" value="O/L">O/L
                                    <input type="checkbox" name="education2" value="A/L">A/L
                                    <input type="checkbox" name="education3" value="graduate">graduate
                                    <input type="checkbox" name="education4" value="postGraduate">postGraduate
                                    <input type="checkbox" name="education5" value="Doctor">Doctor

                                </td>
                            </tr>
                            <tr>
                                <td></td>
                                <td>
                                    <input type="checkbox" name="education6" value="HND">HND
                                    <input type="checkbox" name="education10" value="Proffessional">Proffessional
                                    <input type="checkbox" name="education7" value="awasana">awasana
                                    <input type="checkbox" name="education8" value="darmacharya">darmacharya
                                    <input type="checkbox" name="education9" value="other bidhist">other bidhist

                                </td>
                            </tr>
                        </table>
                            <br>
                        <center>
                            <input type="submit" value="Update">
                        </center>
                    </form>
                </div>

             </div>
            <div id="footer">
                <!-- outer file -->
            </div>
        </div>
    </body>
</html>


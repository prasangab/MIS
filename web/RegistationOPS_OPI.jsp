<%-- 
    Document   : RegistationOPS_OPI
    Created on : Oct 28, 2014, 4:39:32 AM
    Author     : Mr.Mic
--%>

<%@page import="com.MIS.lib.DateGenarator"%>
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
                $("#header").load("UI_Parts/opi_header.jsp");
                $("#nav").load("UI_Parts/nav.jsp");
                $("#footer").load("UI_Parts/footer.jsp");
                $("#wrap").load("UI_Parts/opi_menue.jsp");
            });
        </script>
    </head>
    <body>
        <%

            if (session.getAttribute("useID") == null) {
                RequestDispatcher rd = request.getRequestDispatcher("/index.jsp");
                rd.forward(request, response);
            }

            IDGenorator idg = new IDGenorator();
            DateGenarator dg = new DateGenarator();
            String ID = idg.getOBIID();
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

                    <h3>Old Pupil Registration</h3>
                    <br>
                    <form action="OBRegistation" method="post">
                        <table>
                            <tr>
                                <td><b>Old Pupil Id</b></td>
                                <td><input type="text" name="obId" value="<%=ID%>" required></td>
                            </tr>
                            <tr>
                                <td><b>Student Id</b></td>
                                <td><input type="text" name="stuId" value="" required ></td>
                            </tr>


                            <tr>
                                <td><b>Registration Date</b></td>
                                <td><input type="text" name="Reg_Date" value="<%=today%>" required></td>
                            </tr>
                            <tr>
                                <td><b>Occupation</b></td>
                                <td><input type="text" name="occupation" value=""  ></td>
                            </tr>

                            <tr>
                                <td><b>Office Phone</b></td>
                                <td><input type="text" name="office_phone" value=""  ></td>
                            </tr>
                            <tr>
                                <td><b>Office address</b></td>
                                <td><input type="text" name="Office_address" value=""  ></td>
                            </tr>
                            <tr>
                                <td>
                                    <b>Educational qualification<b>
                                            </td>
                                            <td>
                                                <input type="checkbox" name="education1" value="O/L">O/L
                                                <input type="checkbox" name="education2" value="A/L">A/L
                                                <input type="checkbox" name="education3" value="graduate">Graduate
                                                <input type="checkbox" name="education4" value="postGraduate">PostGraduate
                                                <input type="checkbox" name="education5" value="Doctor">Doctor

                                            </td>
                                            </tr>
                                            <tr>
                                                <td></td>
                                                <td>
                                                    <input type="checkbox" name="education6" value="HND">HND
                                                    <input type="checkbox" name="education10" value="Proffessional">Professional
                                                    <input type="checkbox" name="education7" value="awasana">Daham pasal awasana
                                                    <input type="checkbox" name="education8" value="darmacharya">Darmacharya
                                                    <input type="checkbox" name="education9" value="other bidhist">Other Buddhist

                                                </td>
                                            </tr>
                                            </table><br><br>
                                            <input type="submit" value="Add">
                                            </form>
                                            </center>

                                            </div>

                                            </div>
                                            <div id="footer">
                                                <!-- outer file -->
                                            </div>
                                            </div>
                                            </body>
                                            </html>

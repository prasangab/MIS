<%-- 
    Document   : PasswordChange_TSI
    Created on : Oct 28, 2014, 9:06:39 AM
    Author     : Mr.Mic
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script src="http://code.jquery.com/jquery-latest.js">
        </script>
        <script>
            $(document).ready(function () {
                $('#newpw1').click(function () {
                    var oldpw = $('#oldpw').val();


                    $.get('JQchangepassword', {oldpw: oldpw}, function (responseText) {
                        $('#namelist').text(responseText);
                    });
                });
            });
        </script>
        <script>
            function Chekequel() {
                var x = document.forms["myForm"]["newpw1"].value;
                var y = document.forms["myForm"]["newpw2"].value;

                if (x != y) {
                    alert("new passwords are not match");
                    return false;
                }
            }
        </script>
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
        <body >
            <%

                String uid = (String) session.getAttribute("useID");
                if (session.getAttribute("useID") == null) {
                    RequestDispatcher rd = request.getRequestDispatcher("/index.jsp");
                    rd.forward(request, response);
                }


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
                        <h3>Password Change</h3>

                        <form action="ChangePassword" method="post" name="myForm" id="myForm" onsubmit="return Chekequel();">
                            <table>
                                <tr>
                                    <td>
                                        Your user ID
                                    </td>
                                    <td>
                                        <%= uid%>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Enter current password</td>
                                    <td>
                                        <input type="password" name="oldpw" id="oldpw" required>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Enter new password</td>
                                    <td>
                                        <input type="password" name="newpw1" id="newpw1" required>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Re-Enter new password</td>
                                    <td>
                                        <input type="password" name="newpw2" id="newpw2" required>
                                    </td>
                                </tr>
                            </table>
                            <input type="submit" value="Change PW">
                        </form>

                        <p id="namelist"></p>
                    </center>
                </div>

            </div>

            <div id="footer">
                Copyright © SiriWajiraghanaDahamPasala.com
            </div>
        </div>


    </body>
</html>


<%-- 
    Document   : FogetPassword
    Created on : Sep 4, 2014, 7:16:42 PM
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
                $("#header").load("UI_Parts/commen_header.jsp");
                $("#nav").load("UI_Parts/nav2.jsp");
                $("#footer").load("UI_Parts/footer.jsp");
                //  $("#wrap").load("UI_Parts/rci_menue.jsp");
            });
        </script>
        <script type="text/javascript">
            var datefield = document.createElement("input")
            datefield.setAttribute("type", "date")
            if (datefield.type != "date") { //if browser doesn't support input type="date", load files for jQuery UI Date Picker
                document.write('<link href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/themes/base/jquery-ui.css" rel="stylesheet" type="text/css" />\n')
                document.write('<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.4/jquery.min.js"><\/script>\n')
                document.write('<script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/jquery-ui.min.js"><\/script>\n')
            }
        </script>

        <script>
            if (datefield.type != "date") { //if browser doesn't support input type="date", initialize date picker widget:
                jQuery(function ($) { //on document.ready
                    $('#birthday').datepicker({ dateFormat: 'yy-mm-dd' });
                })
            }
        </script>
    </head>
    <body >

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
                        <!-- Create a table to design the page layout-->
                        <br><br>
                        <form name="MainLogin" action="FogetPassword" method="post">

                            <table>

                                <tr>
                                    <td>User ID</td>
                                    <td><input type="text" name="userid" value="" size="50" required></td>
                                </tr>
                                <tr>
                                    <td>BirthDay</td>
                                    <td><input type="date" name="Bday" id="birthday" value="" required></td>
                                </tr>
                                <tr>
                                    <td></td>
                                    <td>
                                
                                    <input type="submit" Value="Submit" name="Login">
                               
                                </td>
                                </tr>

                            </table>

                        </form>
                        
                        <br><br>
                        <p>After sign up your mail account, get your new password.</p>
                    </center>

                </div>


            </div>
            <div id="footer">
                <!-- outer file -->
            </div>
        </div>
    </body>
</html>

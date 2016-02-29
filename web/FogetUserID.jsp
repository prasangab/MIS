<%-- 
    Document   : FogetUserID
    Created on : Oct 26, 2014, 7:02:39 AM
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
                    $('#bd').datepicker({ dateFormat: 'yy-mm-dd' });
                })
            }
        </script>
        

        <script>
            $(document).ready(function () {
                $('#submit').click(function () {
                    var usertype = $('#ut').val();
                    var userName = $('#un').val();
                    var birthday = $('#bd').val();
                    $.get('FogotUserID', {usertype: usertype, userName: userName, birthday: birthday}, function (responseText) {
                        $('#namelist').text(responseText);
                    });
                });
            });
        </script>

    </head>
    <body>


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

                    <br><br><br>  
                    <center>
                        <form id="form1" >
                            <table>
                                <tr>
                                    <td>
                                        User Type
                                    </td>
                                    <td>
                                        <select  name="usertype" id="ut">

                                            <option value="stu">Student</option>
                                            <option value="stf">Staff</option>
                                            <option value="ops">Old Boy</option>
                                            <option value="prf">Prefect</option>
                                            <option value="tss">Thurunusaviya Student</option>                          
                                            <option value="prn">Guardian</option>
                                        </select>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        User Name 
                                    </td>
                                    <td>
                                        <input type="text" name="userName" id="un" required>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        Birth Day 
                                    </td>
                                    <td>
                                        <input type="date" name="birthday" id="bd" required>
                                    </td>
                                </tr>
                            </table>
                            <input id="submit" type="button" value="search">
                        </form>
                        <p id="namelist"></p>
                    </center>
                </div>

            </div>
            <div id="footer">
                <!-- outer file -->
            </div>
        </div>
    </body>
</html>

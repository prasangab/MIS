<%-- 
    Document   : Main Login
    Created on : Aug 28, 2014, 4:04:28 PM
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
                        <br>
                        <br>
                        <br>
                        <br>
                        <!-- Create a table to design the page layout-->
                        <form name="MainLogin" action="mainAccessControler" method="post" >
                            <table>

                                <tr>
                                    <td><b>User ID</b></td>
                                    <td><input type="text" id="uid" name="userid" value="" size="50" required></td>
                                </tr>
                                <tr>
                                    <td><b>Password</b></td>
                                    <td><input type="password" id="pass" name="userpassword" value="" size="50" required></td>
                                </tr>
                                <tr>
                                    <td><p></p>      </td>
                                    <td><p></p>     </td>
                                </tr>
                                <tr>
                                    <td></td>
                                    <td>
                                <center>
                                    <input type="submit" Value="Sign In" name="Login"> 
                                </center>
                                </td>
                                </tr>


                            </table>
                        </form> 
                        
                        <br><br>
                        
                        <table>
                            <tr>
                                <td></td>
                                <td>
                                    <a href="FogetUserID.jsp" target="_blank">Forgot User ID</a>
                       
                                </td>
                            </tr>
                            <tr>
                                <td></td>
                                <td>
                                      <a href="FogetPassword.jsp" target="_blank">Forgot Password</a>
                       
                                </td>
                            </tr>
                        </table>
                        
                    </center>

                </div>


            </div>
            <div id="footer">
                <!-- outer file -->
            </div>
        </div>
    </body>
</html>

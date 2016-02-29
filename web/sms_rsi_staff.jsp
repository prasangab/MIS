<%-- 
    Document   : sms_rsi_staff
    Created on : Jan 15, 2015, 4:56:50 PM
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

            String x1 = (String) session.getAttribute("useID");
            if (x1 == null) {
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
                        <h3>Send SMS's to Staff</h3>
                        <form action="sms_staff" method="post">
                            <table>
                               
                                <tr>
                                    <td>
                                        Type Your SMS:
                                    </td>
                                    <td>
                                        <textarea name="massage" rows="4" cols="50" required placeholder="Type your message hear....">
                                            
                                        </textarea>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        
                                    </td>
                                    <td>
                                        <input type="submit" value="Send">
                                    </td>
                                </tr>
                            </table>
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

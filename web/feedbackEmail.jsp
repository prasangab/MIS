<%-- 
    Document   : feedbackEmail
    Created on : Oct 26, 2014, 10:00:36 PM
    Author     : Mr.Mic
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" type="text/css" href="UI_Parts/mystyle_Aplication.css">
        <!-- jQuery library -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>

        <script>
            $(function () {
                $("#header").load("UI_Parts/feedback_header.jsp");
                $("#nav").load("UI_Parts/nav.jsp");
                $("#footer").load("UI_Parts/footer.jsp");
                //  $("#wrap").load("UI_Parts/stu_menue.jsp");
            });
        </script>
    </head>
    <body>
        <%
            String userID = (String) session.getAttribute("useID");
            if (userID == null) {
                RequestDispatcher rd = request.getRequestDispatcher("/index.jsp");
                rd.forward(request, response);
            }

        %>
        <div id="container">
            <div id="header">


            </div>

            <div id="nav">

            </div>

            <div id="section">




                <div id="content_container">

                    <br>

                    <center>
                        <form action="feedbackEmail" method="post">
                            <h3>Fill and Send Your Feedback</h3>
                            <table>
                                <tr>
                                    <td>
                                        subject 
                                    </td>
                                    <td>
                                        <input type="text" name="Subject" id="Subject" required>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        Message 
                                    </td>
                                    <td>
                                        <textarea name="Message" rows="4" cols="50" required>Type your feedback in here</textarea>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        User ID 
                                    </td>
                                    <td>
                                        <input type="text" value="<%=userID%>" readonly required disabled>
                                         
                                    </td>
                                </tr>
                                <tr>
                                    <td></td>
                                    <td>
                                        <input type="submit" value="submit" name="submit" id="submit">
                                    </td>
                                </tr>
                            </table>
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

<%-- 
    Document   : RegistationAdm
    Created on : Sep 7, 2014, 6:04:37 AM
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
        <h1>Admin Registration</h1>
        <br>
        <form action="AdmRegistation" method="post">
            <table>
                <tr>
                    <td>
                        New User ID
                    </td>
                    <td>
                        <input type="text" name="ouID">
                    </td>
                </tr>
                <tr>
                    <td><b>Registration Date</b></td>
                    <td><input type="date" name="Reg_Date" value="" ></td>
                </tr>
                <tr>
                    <td>Staff ID</td>
                    <td>
                        <input type="text" name="stfID">
                    </td>
                </tr>
                
            </table>
            <input type="submit" value="Add rci">
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

       
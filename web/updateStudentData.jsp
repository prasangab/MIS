<%-- 
    Document   : updateStudentData
    Created on : Sep 21, 2014, 9:38:29 AM
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
            if(session.getAttribute("useID") == null){
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
                     <center>
           
      
        <h3>Student Update </h3>

        <!--The registration form for the users -->
        <form action="SubmitUpdateStudent" name="StudentRegistation" method="post">

            <table>
                <tr>
                    <td><b>Student ID</b></td>
                    <td><input type="text" name="Id" value="<%=p1%>" size="50" readonly ></td>
                </tr>
                
                
                <tr>
                    <td><b>Registration Date</b></td>
                    <td><input type="text" name="Reg_Date" value="<%=p2%>" readonly></td>
                </tr>
                <tr>
                    <td><b>Full Name</b></td>
                    <td><input type="text" name="Full_Name" value="<%=p3%>" size="50" readonly></td>
                </tr>
                <tr>
                    <td><b>Initials</b></td>
                    <td><input type="text" name="Initial_Name" value="<%=p4%>" size="50" readonly></td>
                </tr> 
 <tr>
                    <td><b>Birthday</b></td>
                    <td><input type="text" name="bDay" value="<%=p16%>" size="50" readonly></td>
                </tr> 
                
                    <td><b>National Identity Card No</b></td>
                    <td><input type="text" name="NIC" value="<%=p7%>" size="50"></td>
                </tr>
                <tr>
                    <td><b>Address</b></td>
                    <td><input type="text" name="Address" value="<%=p8%>" size="50">
                    </td>
                </tr><tr>
                    <td><b>Land Phone</b></td>
                    <td><input type="text" name="Land_Phone" value="<%=p12%>" size="50"></td>
                </tr>
                <tr>
                    <td><b>Mobile Phone 1</b></td>
                    <td><input type="text" name="Mobile_Phone1" value="<%=p11%>" size="50"></td>
                </tr>
                <tr>
                    <td><b>Mobile Phone 2</b></td>
                    <td><input type="text" name="Mobile_Phone2" value="<%=p10%>" size="50"></td>
                </tr>
                <tr>
                    <td><b>Fax</b></td>
                    <td><input type="text" name="Fax" value="<%=p11%>" size="50"></td></tr>
                <tr>
                    <td><b>Email</b></td>
                    <td><input type="email" name="email" value="<%=p17%>" placeholder="@gmail.com" size="50"></td>
                </tr>
                <tr>
                    <td><b>School</b></td>
                    <td><input type="text" name="school" value="<%=p13%>" size="50"></td></tr>
                
                
            </table>
                <br>
            <center><input type="submit" Value="Update"></center>
            <br><br>

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

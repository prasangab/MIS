<%-- 
    Document   : RegistationPrn
    Created on : Aug 31, 2014, 4:41:06 PM
    Author     : Mr.Mic
--%>

<%@page import="com.MIS.lib.DateGenarator"%>
<%@page import="com.MIS.lib.IDGenorator"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Parent registation </title>
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

                IDGenorator idg = new IDGenorator();
                DateGenarator dg = new DateGenarator();
                String ID = idg.getParentID();
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
                     

        <h3>Registration Form </h3>

        <!--The registration form for the users -->
        <form action="ParentRegistation"  method="post">

            <table>
                <tr>
                    <td>Parent Id</td>
                    <td><input type="text" name="Id" value="<%=ID%>" required size="50"></td>
                </tr>
                <tr>
                    <td>Relation</td>
                    <td>
                        <input type="radio" name='Relation' value='father'>father
                        <input type="radio" name='Relation' value='mother'>mother
                        <input type="radio" name='Relation' value='gardian'>gardian
                    </td>
                </tr>

                <tr>
                    <td>Registration Date</td>
                    <td><input type="text" name="Reg_Date"  value="<%=today%>" required ></td>
                </tr>
                <tr>
                    <td>State</td>
                    <td><input type="radio" name='state' value='Mr.'>Mr
                        <input type="radio" name='state' value='Mrs.'>Mrs.
                    </td>
                </tr>
                <tr>
                    <td>Full Name</td>
                    <td><input type="text" name="Full_Name" value="" size="50" required></td>
                </tr>
                <tr>
                    <td>Initials</td>
                    <td><input type="text" name="Initial_Name" value="" size="50" required></td>
                </tr> 
                <tr>
                    <td>Birthday</td>
                    <td><input type="text" name="bDay" value="" size="50" required></td>
                </tr> 
                <tr>
                    <td>Race</td>
                    <td><input type="radio" name='Race' value='Sinhala'>Sinhala
                        <input type="radio" name='Race' value='tamil'>Tamil
                        <input type="radio" name='Race' value='Muslim'>Muslim
                        <input type="radio" name='Race' value='Other'>Other
                    </td>
                </tr>
                <tr>
                    <td>Religion</td>
                    <td><input type="radio" name="Religion" value="Buddhist">Buddhist
                        <input type="radio" name="Religion" value="christian">Christian
                        <input type="radio" name="Religion" value="chataolic">Catholic
                        <input type="radio" name="Religion" value="Hindu">Hindu
                        <input type="radio" name="Religion" value="Others">Others
                    </td></tr>
                <tr>
                    <td>NIC No</td>
                    <td><input type="text" name="NIC" value="" size="50" required></td>
                </tr>
                <tr>
                    <td>Address</td>
                    <td><input type="text" name="Address" value="" size="50" required>
                    </td>
                </tr><tr>
                    <td>Land Phone</td>
                    <td><input type="text" name="Land_Phone" value="" size="50"></td>
                </tr>
                <tr>
                    <td>Mobile Phone 1</td>
                    <td><input type="text" name="Mobile_Phone1" value="" size="50" required></td>
                </tr>
                <tr>
                    <td>Mobile Phone 2</td>
                    <td><input type="text" name="Mobile_Phone2" value="" size="50"></td>
                </tr>
                <tr>
                    <td>Fax</td>
                    <td><input type="text" name="Fax" value="" size="50"></td></tr>
                <tr>
                    <td>Email</td>
                    <td><input type="text" name="email" value="" placeholder="@gmail.com" size="50"></td>
                </tr>

                <tr>
                    <td><b>Occupation</b></td>
                    <td><input type="text" name="occupation" value=""  size="50"></td>
                </tr>
                <tr>
                    <td>Office Phone</td>
                    <td><input type="text" name="office_phone" value=""  size="50"></td>
                </tr>
                <tr>
                    <td>Office Address</td>
                    <td><input type="text" name="Office_address" value=""  size="50"></td>
                </tr>
               
            </table><br><br>

            <center><input type="submit" Value="Add" name="Submit"></center>
            <br><br>

        </form>

    
                 
                </div>

            </div>
            <div id="footer">
                <!-- outer file -->
            </div>
        </div>
    </body>
</html>

     
        
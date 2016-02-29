<%-- 
    Document   : RegistationStf_STI
    Created on : Oct 28, 2014, 4:26:57 AM
    Author     : Mr.Mic
--%>

<%@page import="com.MIS.lib.DateGenarator"%>
<%@page import="com.MIS.lib.IDGenorator"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Stf registation</title>
      <link rel="stylesheet" type="text/css" href="UI_Parts/mystyle_Aplication.css">
        <!-- jQuery library -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>

        <script>
            $(function () {
                $("#header").load("UI_Parts/sti_header.jsp");
                $("#nav").load("UI_Parts/nav.jsp");
                $("#footer").load("UI_Parts/footer.jsp");
                $("#wrap").load("UI_Parts/sti_menue.jsp");
            });
        </script>
    </head>
    <body  >
        <%

                if (session.getAttribute("useID") == null) {
                    RequestDispatcher rd = request.getRequestDispatcher("/index.jsp");
                    rd.forward(request, response);
                }

                IDGenorator idg = new IDGenorator();
                DateGenarator dg = new DateGenarator();
                String ID = idg.getStaffID();
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
                    <h3>Staff Registration</h3>

        <!--The registration form for the users -->
        <form action="StaffRegistation_STI"  method="post">

            <table>
                <tr>
                    <td>Staff ID</td>
                    <td><input type="text" name="Id" value="<%=ID%>" size="50" required></td>
                </tr>
                <tr>
                    <td>Is Academic Staff</td>
                    <td>
                        <input type="radio" name='accademic' value='true'>Yes,academic
                        <input type="radio" name='accademic' value='false'>No, non academic
                    </td>
                </tr>

                <tr>
                    <td>Registration Date</td>
                    <td><input type="text" name="Reg_Date" value="<%=today%>" required ></td>
                </tr>
                <tr>
                    <td>State</td>
                    <td><input type="radio" name='state' value='Mr.'>Mr
                        <input type="radio" name='state' value='Mrs.'>Mrs.
                        <input type="radio" name='state' value='Vene.'>Ven.
                        <input type="radio" name='state' value='Miss'>Miss.
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
                    <td>Birth Day</td>
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
                        <input type="radio" name="Religion" value="christian">cristian 
                        <input type="radio" name="Religion" value="chataolic">catholic
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
                    <td><input type="email" name="email" value="" placeholder="@gmail.com" size="50"></td>
                </tr>

                <tr>
                    <td>Occupation</td>
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
                <tr>
                    <td>
                        Educational Qualifications
                    </td>
                    <td>
                        <input type="checkbox" name="education1" value="O/L">O/L
                        <input type="checkbox" name="education2" value="A/L">A/L
                        <input type="checkbox" name="education3" value="graduate">Graduate
                        <input type="checkbox" name="education4" value="postGraduate">post Graduate
                        <input type="checkbox" name="education5" value="Doctor">Doctor
                        
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td>
                        <input type="checkbox" name="education6" value="HND">HND
                        <input type="checkbox" name="education7" value="awasana">Dahampasal Awasana
                        <input type="checkbox" name="education8" value="darmacharya">Darmacharya
                        <input type="checkbox" name="education9" value="other bidhist">Other Buddhist Exams
                        <input type="checkbox" name="education10" value="Proffessional">professional
                    </td>
                </tr>
                 <tr>
                    <td>Is Student in our Dahampasala</td>
                    <td>
                        <input type="radio" name='student' value='true'>Yes
                        <input type="radio" name='student' value='false'>No
                    </td>
                <tr>
                    <td>Student ID</td>
                    <td><input type="text" name="stuid" value=""  size="50"></td>
                </tr>
                 <tr>
                    <td>Is Thurunusaviya Student</td>
                    <td>
                        <input type="radio" name='tss' value='true'>Yes
                        <input type="radio" name='tss' value='false'>No
                    </td>
                <tr>
                    <td>Thurunusaviya Student ID</td>
                    <td><input type="text" name="tssid" value=""  size="50"></td>
                </tr>
                <tr>
                    <td>Is Thurunusaviya teacher</td>
                    <td>
                        <input type="radio" name='tst' value='true'>Yes
                        <input type="radio" name='tst' value='false'>No
                    </td>
                <tr>
                
                </table>

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

            
            
            
            
            
            
            
            
            
            
            
            
            
       

       
    
</body>
</html>

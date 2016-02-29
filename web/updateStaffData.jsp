<%-- 
    Document   : updateStaffData
    Created on : Sep 21, 2014, 4:31:12 PM
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
                $("#header").load("UI_Parts/sti_header.jsp");
                $("#nav").load("UI_Parts/nav.jsp");
                $("#footer").load("UI_Parts/footer.jsp");
                $("#wrap").load("UI_Parts/sti_menue.jsp");
            });
        </script>
        </head>
        <body>
            <%

                String x1 = (String) session.getAttribute("uid");
                if (session.getAttribute("useID") == null) {
                    RequestDispatcher rd = request.getRequestDispatcher("/index.jsp");
                    rd.forward(request, response);
                }

            %>
            <br>
        <center>
            <div id="container">
            <div id="header">
                <table width="100%" border="0" cellpadding="0" cellspacing="0" bgcolor="#254a6e" >
                    <tr>
                        <td>
                            <img src="uper1.jpg" width="300">
                        </td>
                        <td>
                            <h1 style="color: #FFF"> Staff In Charge</h1>
                        </td>
                        <td align="right">

                            <h3> <a href="logoutPage.jsp" style="color: #FFF">(LogOut)</a></h3> 
                        </td>
                    </tr>
                </table>
            </div>

            <div id="nav">
                <ul>
                    <li><a href="home.html">Home</a></li>
                    <li><a href="history.html">History</a></li>
                    <li><a href="thurunusaviya.html">Thurunusaviya</a></li>
                    <li><a href="gallary.html">Gallery</a></li>
                    <li><a href="#">View My Details</a></li>
                    <li><a href="PasswordChange.jsp">Change Password</a></li>

                </ul>
            </div>
                <div id="section">


                <div id="wrap">

                    <ul id="navbar">
                        <!-- The strange spacing herein prevents an IE6 whitespace bug. -->
                        <li><a href="#">||Committee Management||</a>
                            <ul>
                                <li><a href="addComity.jsp">Add Committee</a></li>
                                <li><a href="RemoveComity.jsp">Remove Committee</a></li>
                                <li><a href="#">Update Committee</a></li>
                                <li><a href="addComityMember.jsp">Add Committee Member </a></li>
                                <li><a href="addComityDissision.jsp">Add Committee Decision</a></li>
                                <li><a href="RemoveComityDissision.jsp">Remove Committee Decision </a></li>
                                <li><a href="#">Update Committee Decision</a></li>


                            </ul>
                        </li>


                        <li><a href="#">||Service Management||</a>
                            <ul>
                                <li><a href="addServise.jsp">Add Service</a></li>
                                <li><a href="#">Remove Service</a></li>
                                <li><a href="#">Update service</a></li>
                                <li><a href="staffaddservice.jsp">Allocate Service</a></li>
                                <li><a href="removestaffservice.jsp">Remove Allocate Service</a></li>
                                <li><a href="#"> Update Allocate Service</a></li>
                            </ul>
                        </li>
                        <li><a href="#">||User Management||</a>
                            <ul>
                                <li><a href="RegistationStf.jsp">Add Staff Member</a></li>                    
                                <li><a href="removeUser.jsp">Remove Staff Member</a></li>
                                <li><a href="updateStaffData.jsp">Update Staff Member</a></li>
                                <li><a href="searchUser.jsp">Search User</a></li>
                            </ul>
                        </li>
                        <li><a href="#">||Reports||</a>
                            <ul>
                                <li><a href="#">Staff  Reports</a></li>
                                <li><a href="#">Reports</a></li>
                                <li><a href="#">Course Reports</a></li>

                            </ul>
                        </li>
                        <li><a href="#">||SMS and E-mails||</a>
                            <ul>
                                <li><a href="#">Send SMS to Student</a></li>
                                <li><a href="#">Send SMS to Parent</a></li>
                                <li><a href="#">Send SMS to Staff</a></li>
                                <li><a href="#">Send E-mail to Parent</a></li>
                                <li><a href="#">Send E-mail to Student</a></li>
                                <li><a href="#">Send E-mail to Staff</a></li>

                            </ul>
                        </li>
                        <li><a href="#">||Resource Management||</a>
                            <ul>
                                <li><a href="#">Add File</a></li>
                                <li><a href="#">Add video</a></li>
                                <li><a href="#">Add Audio</a></li>
                                <li><a href="#">Add Image</a></li>
                                <li><a href="#">Remove File</a></li>
                                <li><a href="#">Remove video</a></li>
                                <li><a href="#">Remove Audio</a></li>
                                <li><a href="#">Remove Image</a></li>
                            </ul>
                        </li>

                    </ul>
                </div>


                <center>
     

           
                <h3>Update Register Form </h3>

                <!--The registration form for the users -->
                <form action="SubmitUpdateStaff"  method="post">

                    <table>
                        <tr>
                            <td><b>Staff Id</b></td>
                            <td><input type="text" name="Id" value="" size="50"></td>
                        </tr>
                        <tr>
                            <td><b>Is Academic Staff</b></td>
                            <td>
                                <input type="radio" name='accademic' value='true'>Yes,Academic
                                <input type="radio" name='accademic' value='false'>No, Non Academic
                            </td>
                        </tr>

                        <tr>
                            <td><b>Registration Date</b></td>
                            <td><input type="date" name="Reg_Date" value="" ></td>
                        </tr>
                        <tr>
                            <td><b>State</b></td>
                            <td><input type="radio" name='state' value='Mr.'>Mr
                                <input type="radio" name='state' value='Mrs.'>Mrs.
                                <input type="radio" name='state' value='Vene.'>Ven.
                                <input type="radio" name='state' value='Miss'>Miss.
                            </td>
                        </tr>
                        <tr>
                            <td><b>Full_Name</b></td>
                            <td><input type="text" name="Full_Name" value="" size="50"></td>
                        </tr>
                        <tr>
                            <td><b>Initials</b></td>
                            <td><input type="text" name="Initial_Name" value="" size="50"></td>
                        </tr> 
                        <tr>
                            <td><b>Birth day</b></td>
                            <td><input type="text" name="bDay" value="" size="50"></td>
                        </tr> 
                        <tr>
                            <td><b>Race</b></td>
                            <td><input type="radio" name='Race' value='Sinhala'>Sinhala
                                <input type="radio" name='Race' value='tamil'>Tamil
                                <input type="radio" name='Race' value='Muslim'>Muslim
                                <input type="radio" name='Race' value='Other'>Other
                            </td>
                        </tr>
                        <tr>
                            <td><b>Religion</b></td>
                            <td><input type="radio" name="Religion" value="Buddhist">Buddhist
                                <input type="radio" name="Religion" value="christian">cristian
                                <input type="radio" name="Religion" value="chataolic">chataolic
                                <input type="radio" name="Religion" value="Hindu">Hindu
                                <input type="radio" name="Religion" value="Others">Others
                            </td></tr>
                        <tr>
                            <td><b>NIC_No:</b></td>
                            <td><input type="text" name="NIC" value="" size="50"></td>
                        </tr>
                        <tr>
                            <td><b>Address</b></td>
                            <td><input type="text" name="Address" value="" size="50">
                            </td>
                        </tr><tr>
                            <td><b>Land_Phone</b></td>
                            <td><input type="text" name="Land_Phone" value="" size="50"></td>
                        </tr>
                        <tr>
                            <td><b>Mobile_Phone 1</b></td>
                            <td><input type="text" name="Mobile_Phone1" value="" size="50"></td>
                        </tr>
                        <tr>
                            <td><b>Mobile_Phone 2</b></td>
                            <td><input type="text" name="Mobile_Phone2" value="" size="50"></td>
                        </tr>
                        <tr>
                            <td><b>Fax</b></td>
                            <td><input type="text" name="Fax" value="" size="50"></td></tr>
                        <tr>
                            <td><b>Email</b></td>
                            <td><input type="text" name="email" value="" placeholder="@gmail.com" size="50"></td>
                        </tr>

                        <tr>
                            <td><b>Occupation</b></td>
                            <td><input type="text" name="occupation" value=""  size="50"></td>
                        </tr>
                        <tr>
                            <td><b>Office Phone</b></td>
                            <td><input type="text" name="office_phone" value=""  size="50"></td>
                        </tr>
                        <tr>
                            <td><b>Office Address</b></td>
                            <td><input type="text" name="Office_address" value=""  size="50"></td>
                        </tr>
                        <tr>
                            <td>
                                <b>Educational Qualification</b>
                            </td>
                            <td>
                                <input type="checkbox" name="education1" value="O/L">O/L
                                <input type="checkbox" name="education2" value="A/L">A/L
                                <input type="checkbox" name="education3" value="graduate">Graduate
                                <input type="checkbox" name="education4" value="postGraduate">PostGraduate
                                <input type="checkbox" name="education5" value="Doctor">Doctor

                            </td>
                        </tr>
                        <tr>
                            <td></td>
                            <td>
                                <input type="checkbox" name="education6" value="HND">HND
                                <input type="checkbox" name="education7" value="awasana">Awasana
                                <input type="checkbox" name="education8" value="darmacharya">Dharmacharya
                                <input type="checkbox" name="education9" value="other bidhist">Other
                                <input type="checkbox" name="education10" value="Proffessional">Professional
                            </td>
                        </tr>
                        <tr>
                            <td><b>Is Student In Our DP</b></td>
                            <td>
                                <input type="radio" name='student' value='true'>Yes
                                <input type="radio" name='student' value='false'>No
                            </td>
                        <tr>
                            <td><b>Student ID</b></td>
                            <td><input type="text" name="stuid" value=""  size="50"></td>
                        </tr>
                        <tr>
                            <td><b>Is Tusrnusaviya</b></td>
                            <td>
                                <input type="radio" name='tss' value='true'>Yes
                                <input type="radio" name='tss' value='false'>No
                            </td>
                        <tr>
                            <td><b>Turunusaviya ID</b></td>
                            <td><input type="text" name="tssid" value=""  size="50"></td>
                        </tr>
                        <tr>
                            <td><b>Is Turunusaviya Teacher</b></td>
                            <td>
                                <input type="radio" name='tst' value='true'>Yes
                                <input type="radio" name='tst' value='false'>No
                            </td>
                        <tr>

                    </table>

                    <center><input type="submit" Value="Register Staff" name="Submit"></center>
                    <br><br>

                </form>
            </div>
            <div id="footer">
                Copyright © SiriWajiraghanaDahamPasala.com
            </div>
            </body>
            </html>

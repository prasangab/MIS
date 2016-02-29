<%-- 
    Document   : RegistationStu
    Created on : Aug 28, 2014, 6:51:48 AM
    Author     : Mr.Mic
--%>

<%@page import="com.MIS.lib.DateGenarator"%>
<%@page import="com.MIS.lib.IDGenorator"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registration_Student</title>
        <link rel="stylesheet" type="text/css" href="UI_Parts/mystyle_Aplication.css">
        <!-- jQuery library -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
        <script>
            //name validation
            function allLetter(uname)
            {
                var letters = /^[a-zA-Z\s]+$/
                if (uname.value.match(letters))
                {
                    return true;
                }
                else
                {
                    alert('Username must have alphabet characters only');
                    uname.focus();
                    return false;
                }
            }

            //phone number validation
            function checkphone(x)
            {
              //  var x = document.forms["mf"]["mp"].value;
              
                if (isNaN(x))
                {
                    alert("Must input telephone number. You enterd numbers only.");
                    
                    return false;
                }
              /*  if (x.length < 11)
                {
                    alert("Must input telephone number. Invalid charachterlength.");
                    
                    return false;
                }**/
            }
                
            
            
            
            
         /*   function formvalidate(){
                
                if(allLetter(username)){
                    if(allLetter(ni)){
                         if(checkphone(lp)){
                            if(checkphone(mp1)){
                                if(checkphone(mp2)){
                                     if(checkphone(fax)){
                                        if(checkphone(username)){
                }  
               }  
                
                return false;
            }*/
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
                    $('#birthday').datepicker({dateFormat: 'yy-mm-dd'});
                })
            }
        </script>

        <script>
            $(function () {
                $("#header").load("UI_Parts/rci_header.jsp");
                $("#nav").load("UI_Parts/nav.jsp");
                $("#footer").load("UI_Parts/footer.jsp");
                $("#wrap").load("UI_Parts/rci_menue.jsp");
            });
        </script>


    </head>


    <body >
        <%

            if (session.getAttribute("useID") == null) {
                RequestDispatcher rd = request.getRequestDispatcher("/index.jsp");
                rd.forward(request, response);
            }

            IDGenorator idg = new IDGenorator();
            DateGenarator dg = new DateGenarator();
            String ID = idg.getStudentID();
            String today = dg.getToday();
        %>
        <div id="container" >
            <div id="header">
                <!-- outer file -->
            </div>
            <div id="nav" style="height: 650px">
                <!-- outer file -->
            </div>
            <div id="section" style="height: 650px" >
                <div id="wrap" >
                    <!-- outer file -->
                </div>
                <div id="content_container">




                    <h3>Registration Form </h3>

                    <!--The registration form for the users -->
                    <form action="StudentRegistation"   method="post" id="mf" >

                        <table>
                            <tr>
                                <td><b>Student ID<span style="color: red">*</span></b></td>
                                <td><input type="text" name="Id" value="<%=ID%>" size="50" required></td>
                            </tr>


                            <tr>
                                <td><b>Registration Date<span style="color: red">*</span></b></td>
                                <td><input type="text" name="Reg_Date" value="<%=today%>" required ></td>
                            </tr>
                            <tr>
                                <td><b>Full Name<span style="color: red">*</span></b></td>
                                <td><input type="text" id="username" onkeypress="allLetter(username);" name="Full_Name" value="" size="50" required></td>
                            </tr>
                            <tr>
                                <td><b>Name With Initials<span style="color: red">*</span></b></td>
                                <td><input type="text" id="ni" onkeypress="allLetter(ni);" name="Initial_Name"  value="" size="50" required></td>
                            </tr> 
                            <tr>
                                <td><b>Birthday<span style="color: red">*</span></b></td>
                                <td><input type="text" name="bDay" id="birthday" value="" size="50" required></td>
                            </tr> 
                            <tr>
                                <td><b>Race</b></td>
                                <td><input type="radio" name='Race' value='Sinhala'>Sinhala
                                    <input type="radio" name='Race' value='tamil'>Tamil
                                    <input type="radio" name='Race' value='Muslim'>Muslim
                                    <input type="radio" name='Race' value='Other'>Other
                                </td></tr>
                            <tr>
                                <td><b>Religion</b></td>
                                <td><input type="radio" name="Religion" value="Buddhist">Buddhist
                                    <input type="radio" name="Religion" value="christian">Christian
                                    <input type="radio" name="Religion" value="chataolic">Catholic
                                    <input type="radio" name="Religion" value="Hindu">Hindu
                                    <input type="radio" name="Religion" value="Others">Others
                                </td></tr>
                            <tr>
                                <td><b>NIC No</b></td>
                                <td><input type="text" name="NIC" value="" size="50"></td>
                            </tr>
                            <tr>
                                <td><b>Address<span style="color: red">*</span></b></td>
                                <td><input type="text" name="Address" value="" size="50" required>
                                </td>
                            </tr><tr>
                                <td><b>Land Phone</b></td>
                                <td><input type="tel" name="Land_Phone" id="lp"  maxlength="11"  value="" size="50"></td>
                            </tr>
                            <tr>
                                <td><b>Mobile Phone 1<span style="color: red">*</span></b></td>
                                <td><input type="tel" name="Mobile_Phone1"  onkeypress ="checkphone(mp1);"  value="" size="50" id="mp1" placeholder="94xxxxxxxxx" maxlength="11"    required></td>
                            </tr>
                            <tr>
                                <td><b>Mobile Phone 2</b></td>
                                <td><input type="tel" name="Mobile_Phone2" maxlength="11"  placeholder="94xxxxxxxxx" id="mp2" value=""  size="50"></td>
                            </tr>
                            <tr>
                                <td><b>Fax</b></td>
                                <td><input type="tel" id="fax" name="Fax" value="" maxlength="11"  size="50"></td></tr>
                            <tr>
                                <td><b>Email</b></td>
                                <td><input type="email" name="email" value="" placeholder="yourmail@mail.com" size="50"></td>
                            </tr>
                            <tr>
                                <td><b>School<span style="color: red">*</span></b></td>
                                <td><input type="text" id="school" onkeypress="allLetter(school);" name="school" value="" size="50" required></td></tr>
                            <tr>
                                <td><b>School Learning Medium<span style="color: red">*</span></b></td>
                                <td><input type="radio" name="slm" value="Singhela" required>Sinhala
                                    <input type="radio" name="slm" value="English" required>English
                                    <input type="radio" name="slm" value="Tamil" required>Tamil
                                </td></tr>
                            <tr>
                                <td><b>Dhamma School Medium<span style="color: red">*</span></b></td>
                                <td><input type="radio" name="dlm" value="Singhela" required>Sinhala
                                    <input type="radio" name="dlm" value="English" required>English

                                </td>
                            </tr>
                            <tr>
                                <td><b>Parent ID<span style="color: red">*</span></b></td>
                                <td><input type="text" name="ParentID" value="" size="50" required></td></tr>
                            <tr>
                            <tr>
                                <td>  
                                </td>
                                <td>
                                    <input type="submit" Value="Submit" name="Submit" >
                                </td>
                            </tr>

                        </table>
                    </form>


                </div>


            </div>
            <div id="footer">
                <!-- outer file -->
            </div>
        </div>
    </body>
</html>

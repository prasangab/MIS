<%-- 
    Document   : staffAddToCourse
    Created on : Oct 14, 2014, 10:41:46 AM
    Author     : Mr.Mic
--%>

<%@page import="com.MIS.lib.DateGenarator"%>
<%@page import="com.MIS.lib.IDGenorator"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Staff Add to Course</title>
        <link rel="stylesheet" type="text/css" href="UI_Parts/mystyle_Aplication.css">
        <!-- jQuery library -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>

        <script>
            $(function () {
                $("#header").load("UI_Parts/tsiheader.jsp");
                $("#nav").load("UI_Parts/nav.jsp");
                $("#footer").load("UI_Parts/footer.jsp");
                $("#wrap").load("UI_Parts/tsi_menue.jsp");
            });
        </script>
        </head>
        <body>
            <%
                
                 // String uid = (String) session.getAttribute("useID");
                 if (session.getAttribute("useID") == null) {
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
                    
                    <h3> Add Staff to Thurunusaviya Course</h3>
                    <form action="AddStaffforTSScourse" method="post" >
                        <table>
                            <tr>
                                <td> Staff ID</td>
                                         
                                <td>
                                    <input type="text" name="StaffID" required >
                                </td>
                            </tr>
                            <tr>
                                <td>Course ID</td>
                                <td><input type="text" name="CourseID" required></td>
                            </tr>
                            <tr>
                                <td>Year</td>
                                <td>
                                    <input type="text" name="Year" required>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                     Attendance
                                </td>
                                <td>
                                    <input type="text" name="attendance">
                                </td>
                            </tr>
                            <tr>
                                <td>Position</td>
                                <td><input type="text" name="Possision"></td>
                            </tr>

                            <tr>
                                <td>01) Q1</td>
                                <td>
                                    <input type="radio" name='q1' value='best'>best
                                    <input type="radio" name='q1' value='good'>good
                                    <input type="radio" name='q1' value='normal'>normal
                                    <input type="radio" name='q1' value='werst'>week
                                </td>
                            </tr>
                            <tr>
                                <td>02) Q2</td>
                                <td>
                                    <input type="radio" name='q2' value='best'>best
                                    <input type="radio" name='q2' value='good'>good
                                    <input type="radio" name='q2' value='normal'>normal
                                    <input type="radio" name='q2' value='werst'>week
                                </td>
                            </tr>
                            <tr>
                                <td>03) Q3</td>
                                <td>
                                    <input type="radio" name='q3' value='best'>best
                                    <input type="radio" name='q3' value='good'>good
                                    <input type="radio" name='q3' value='normal'>normal
                                    <input type="radio" name='q3' value='werst'>worst
                                </td>
                            </tr>
                            <tr>
                                <td>04) Q4</td>
                                <td>
                                    <input type="radio" name='q4' value='best'>best
                                    <input type="radio" name='q4' value='good'>good
                                    <input type="radio" name='q4' value='normal'>normal
                                    <input type="radio" name='q4' value='werst'>week
                                </td>
                            </tr>
                            <tr>
                                <td>05) Q5</td>
                                <td>
                                    <input type="radio" name='q5' value='best'>best
                                    <input type="radio" name='q5' value='good'>good
                                    <input type="radio" name='q5' value='normal'>normal
                                    <input type="radio" name='q5' value='werst'>week
                                </td>
                            </tr>
                            <tr>
                                <td>06) Q6</td>
                                <td>
                                    <input type="radio" name='q6' value='best'>best
                                    <input type="radio" name='q6' value='good'>good
                                    <input type="radio" name='q6' value='normal'>normal
                                    <input type="radio" name='q6' value='werst'>week
                                </td>
                            </tr>
                            <tr>
                                <td>07) Q7</td>
                                <td>
                                    <input type="radio" name='q7' value='best'>best
                                    <input type="radio" name='q7' value='good'>good
                                    <input type="radio" name='q7' value='normal'>normal
                                    <input type="radio" name='q7' value='werst'>week
                                </td>
                            </tr>
                            <tr>
                                <td>08) Q8</td>
                                <td>
                                    <input type="radio" name='q8' value='best'>best
                                    <input type="radio" name='q8' value='good'>good
                                    <input type="radio" name='q8' value='normal'>normal
                                    <input type="radio" name='q8' value='werst'>week
                                </td>
                            </tr>
                            <tr>
                                <td>09) Q9</td>
                                <td>
                                    <input type="radio" name='q9' value='best'>best
                                    <input type="radio" name='q9' value='good'>good
                                    <input type="radio" name='q9' value='normal'>normal
                                    <input type="radio" name='q9' value='werst'>week
                                </td>
                            </tr>
                            <tr>
                                <td>10) Q10</td>
                                <td>
                                    <input type="radio" name='q10' value='best'>best
                                    <input type="radio" name='q10' value='good'>good
                                    <input type="radio" name='q10' value='normal'>normal
                                    <input type="radio" name='q10' value='werst'>week
                                </td>
                            </tr>
                            <tr>
                                <td>11) Q11</td>
                                <td>
                                    <input type="radio" name='q11' value='best'>best
                                    <input type="radio" name='q11' value='good'>good
                                    <input type="radio" name='q11' value='normal'>normal
                                    <input type="radio" name='q11' value='werst'>week
                                </td>
                            </tr>
                            <tr>
                                <td>12) Q12</td>
                                <td>
                                    <input type="radio" name='q12' value='best'>best
                                    <input type="radio" name='q12' value='good'>good
                                    <input type="radio" name='q12' value='normal'>normal
                                    <input type="radio" name='q12' value='werst'>week
                                </td>
                            </tr>
                            <tr>
                                <td>13) Q13</td>
                                <td>
                                    <input type="radio" name='q13' value='best'>best
                                    <input type="radio" name='q13' value='good'>good
                                    <input type="radio" name='q13' value='normal'>normal
                                    <input type="radio" name='q13' value='werst'>week
                                </td>
                            </tr>
                            <tr>
                                <td>14) Q14</td>
                                <td>
                                    <input type="radio" name='q14' value='best'>best
                                    <input type="radio" name='q14' value='good'>good
                                    <input type="radio" name='q14' value='normal'>normal
                                    <input type="radio" name='q14' value='werst'>week
                                </td>
                            </tr>
                            <tr>
                                <td>15) Q15</td>
                                <td>
                                    <input type="radio" name='q15' value='best'>best
                                    <input type="radio" name='q15' value='good'>good
                                    <input type="radio" name='q15' value='normal'>normal
                                    <input type="radio" name='q15' value='werst'>week
                                </td>
                            </tr>
                            <tr>
                                <td>16) Q16</td>
                                <td>
                                    <input type="radio" name='q16' value='best'>best
                                    <input type="radio" name='q16' value='good'>good
                                    <input type="radio" name='q16' value='normal'>normal
                                    <input type="radio" name='q16' value='werst'>week
                                </td>
                            </tr>
                            <tr>
                                <td>17) Q17</td>
                                <td>
                                    <input type="radio" name='q17' value='best'>best
                                    <input type="radio" name='q17' value='good'>good
                                    <input type="radio" name='q17' value='normal'>normal
                                    <input type="radio" name='q17' value='werst'>week
                                </td>
                            </tr>
                            <tr>
                                <td>18) Q18</td>
                                <td>
                                    <input type="radio" name='q18' value='best'>best
                                    <input type="radio" name='q18' value='good'>good
                                    <input type="radio" name='q18' value='normal'>normal
                                    <input type="radio" name='q18' value='werst'>week
                                </td>
                            </tr>
                            <tr>
                                <td>19) Q19</td>
                                <td>
                                    <input type="radio" name='q19' value='best'>best
                                    <input type="radio" name='q19' value='good'>good
                                    <input type="radio" name='q19' value='normal'>normal
                                    <input type="radio" name='q19' value='werst'>week
                                </td>
                            </tr>
                            <tr>
                                <td>20) Q20</td>
                                <td>
                                    <input type="radio" name='q20' value='best'>best
                                    <input type="radio" name='q20' value='good'>good
                                    <input type="radio" name='q20' value='normal'>normal
                                    <input type="radio" name='q20' value='werst'>week
                                </td>
                            </tr>
                        </table>
						<br>
                        <input type="submit" value="Add">
                    </form>
                  

                </div>

            </div>

            <div id="footer">
                Copyright © SiriWajiraghanaDahamPasala.com
            </div>
        </div>

    </body>
</html>

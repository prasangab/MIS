<%-- 
    Document   : PrefectBehaviors
    Created on : Oct 8, 2014, 4:14:40 PM
    Author     : Mr.Mic
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" type="text/css" href="UI_Parts/mystyle_Aplication.css">
   
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>

        <script>
            $(function () {
                $("#header").load("UI_Parts/pbi_header.jsp");
                $("#nav").load("UI_Parts/nav.jsp");
                $("#footer").load("UI_Parts/footer.jsp");
                $("#wrap").load("UI_Parts/pbi_menu.jsp");
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
           <div id="container" style="height: 5000">
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

                <div id="content_container" style="height: 1000">

                   <center>
        <h1>Prefect details management</h1>

        <br><br>
        <h3>Add service</h3>
        <form action="addPrfBehaviorReport" method="post">
            <table>
                <tr>
                    <td>
                        Prefect ID
                    </td>
                    <td>
                        <input type="text" name="PrefectID">
                    </td>
                </tr>
                <tr>
                    <td><b>Term</b></td>
                    <td><input type="text" name="Term"></td>
                </tr>
                <tr>
                    <td>Year</td>
                    <td>
                        <input type="text" name="Year">
                    </td>
                </tr>
                <tr>
                    <td>Position</td>
                    <td>
                        <input type="text" name="Possision">
                    </td>
                </tr>
                <tr>
                    <td>Section</td>
                    <td>
                        <input type="text" name="Section">
                    </td>
                </tr>

                <tr>
                    <td>Assay</td>
                    <td>
                        <input type="radio" name='q1' value='best'>best
                        <input type="radio" name='q1' value='good'>good
                        <input type="radio" name='q1' value='normal'>normal
                        <input type="radio" name='q1' value='werst'>werst
                    </td>
                </tr>
                <tr>
                    <td>Brave</td>
                    <td>
                        <input type="radio" name='q2' value='best'>best
                        <input type="radio" name='q2' value='good'>good
                        <input type="radio" name='q2' value='normal'>normal
                        <input type="radio" name='q2' value='werst'>werst
                    </td>
                </tr>
                <tr>
                    <td>Mischievous</td>
                    <td>
                        <input type="radio" name='q3' value='best'>best
                        <input type="radio" name='q3' value='good'>good
                        <input type="radio" name='q3' value='normal'>normal
                        <input type="radio" name='q3' value='werst'>werst
                    </td>
                </tr>
                <tr>
                    <td>Adamant</td>
                    <td>
                        <input type="radio" name='q4' value='best'>best
                        <input type="radio" name='q4' value='good'>good
                        <input type="radio" name='q4' value='normal'>normal
                        <input type="radio" name='q4' value='werst'>werst
                    </td>
                </tr>
                <tr>
                    <td>Unwilling to govern</td>
                    <td>
                        <input type="radio" name='q5' value='best'>best
                        <input type="radio" name='q5' value='good'>good
                        <input type="radio" name='q5' value='normal'>normal
                        <input type="radio" name='q5' value='werst'>werst
                    </td>
                </tr>
                <tr>
                    <td>Misunderstand</td>
                    <td>
                        <input type="radio" name='q6' value='best'>best
                        <input type="radio" name='q6' value='good'>good
                        <input type="radio" name='q6' value='normal'>normal
                        <input type="radio" name='q6' value='werst'>werst
                    </td>
                </tr>
                <tr>
                    <td>Affectivity</td>
                    <td>
                        <input type="radio" name='q7' value='best'>best
                        <input type="radio" name='q7' value='good'>good
                        <input type="radio" name='q7' value='normal'>normal
                        <input type="radio" name='q7' value='werst'>werst
                    </td>
                </tr>
                <tr>
                    <td>Memorable</td>
                    <td>
                        <input type="radio" name='q8' value='best'>best
                        <input type="radio" name='q8' value='good'>good
                        <input type="radio" name='q8' value='normal'>normal
                        <input type="radio" name='q8' value='werst'>werst
                    </td>
                </tr>
                <tr>
                    <td>Abruptness</td>
                    <td>
                        <input type="radio" name='q9' value='best'>best
                        <input type="radio" name='q9' value='good'>good
                        <input type="radio" name='q9' value='normal'>normal
                        <input type="radio" name='q9' value='werst'>werst
                    </td>
                </tr>
                <tr>
                    <td>Competitive</td>
                    <td>
                        <input type="radio" name='q10' value='best'>best
                        <input type="radio" name='q10' value='good'>good
                        <input type="radio" name='q10' value='normal'>normal
                        <input type="radio" name='q10' value='werst'>werst
                    </td>
                </tr>
                <tr>
                    <td>Leadership</td>
                    <td>
                        <input type="radio" name='q11' value='best'>best
                        <input type="radio" name='q11' value='good'>good
                        <input type="radio" name='q11' value='normal'>normal
                        <input type="radio" name='q11' value='werst'>werst
                    </td>
                </tr>
                <tr>
                    <td>Cooperation</td>
                    <td>
                        <input type="radio" name='q12' value='best'>best
                        <input type="radio" name='q12' value='good'>good
                        <input type="radio" name='q12' value='normal'>normal
                        <input type="radio" name='q12' value='werst'>werst
                    </td>
                </tr>
                <tr>
                    <td>Honesty</td>
                    <td>
                        <input type="radio" name='q13' value='best'>best
                        <input type="radio" name='q13' value='good'>good
                        <input type="radio" name='q13' value='normal'>normal
                        <input type="radio" name='q13' value='werst'>werst
                    </td>
                </tr>
                <tr>
                    <td>Attentiveness</td>
                    <td>
                        <input type="radio" name='q14' value='best'>best
                        <input type="radio" name='q14' value='good'>good
                        <input type="radio" name='q14' value='normal'>normal
                        <input type="radio" name='q14' value='werst'>werst
                    </td>
                </tr>
                <tr>
                    <td>Talkativeness</td>
                    <td>
                        <input type="radio" name='q15' value='best'>best
                        <input type="radio" name='q15' value='good'>good
                        <input type="radio" name='q15' value='normal'>normal
                        <input type="radio" name='q15' value='werst'>werst
                    </td>
                </tr>
                <tr>
                    <td>Helpfulness</td>
                    <td>
                        <input type="radio" name='q16' value='best'>best
                        <input type="radio" name='q16' value='good'>good
                        <input type="radio" name='q16' value='normal'>normal
                        <input type="radio" name='q16' value='werst'>werst
                    </td>
                </tr>
                <tr>
                    <td>Presentable</td>
                    <td>
                        <input type="radio" name='q17' value='best'>best
                        <input type="radio" name='q17' value='good'>good
                        <input type="radio" name='q17' value='normal'>normal
                        <input type="radio" name='q17' value='werst'>werst
                    </td>
                </tr>
                <tr>
                    <td>Acceptance</td>
                    <td>
                        <input type="radio" name='q18' value='best'>best
                        <input type="radio" name='q18' value='good'>good
                        <input type="radio" name='q18' value='normal'>normal
                        <input type="radio" name='q18' value='werst'>werst
                    </td>
                </tr>
                <tr>
                    <td>Gradualism</td>
                    <td>
                        <input type="radio" name='q19' value='best'>best
                        <input type="radio" name='q19' value='good'>good
                        <input type="radio" name='q19' value='normal'>normal
                        <input type="radio" name='q19' value='werst'>werst
                    </td>
                </tr>
                <tr>
                    <td>Obedient</td>
                    <td>
                        <input type="radio" name='q20' value='best'>best
                        <input type="radio" name='q20' value='good'>good
                        <input type="radio" name='q20' value='normal'>normal
                        <input type="radio" name='q20' value='werst'>werst
                    </td>
                </tr>
       </table>
            <input type="submit" value="Add servise">
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


          
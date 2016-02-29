<%-- 
    Document   : viweOldBoyProfile
    Created on : Sep 21, 2014, 8:28:53 AM
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
                $("#header").load("UI_Parts/ops_header.jsp");
                $("#nav").load("UI_Parts/nav.jsp");
                $("#footer").load("UI_Parts/footer.jsp");
                $("#wrap").load("UI_Parts/ops_menue.jsp");
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
                    
                    <table>
                        <tr>
                            <td>
                              Old Pupil ID   
                            </td>
                            <td>
                              : <%=p1%>  
                            </td>
                        </tr>
                         <tr>
                            <td>
                              Student ID 
                            </td>
                            <td>
                              : <%= p2%> 
                            </td>
                        </tr>
                         <tr>
                            <td>
                             Registration Date 
                            </td>
                            <td>
                             : <%= p3%>  
                            </td>
                        </tr>
                         <tr>
                            <td>
                             Occupation 
                            <td>
                              : <%= p4%> 
                            </td> 
                            
                        </tr>
                         <tr>
                            <td>
                                Office Phone No 
                            </td>
                            <td>
                              : <%= p5%>    
                            </td>
                        </tr>
                         <tr>
                            <td>
                              Office Address
                            </td>
                            <td>
                             : <%= p6%>    
                            </td>
                        </tr>
                         <tr>
                            <td>
                              Educational Qualifications
                              </td>
                            <td>
                           : <%=  p7%>
                            </td>
                            
                        </tr>
                         <tr>
                            <td>
                               
                            </td>
                            <td>
                             : <%= p8%>   
                            </td>
                        </tr>
                         <tr>
                            <td>
                                
                            </td>
                            <td>
                              : <%= p9%>    
                            </td>
                        </tr>
                         <tr>
                            <td>
                                
                            </td>
                            <td>
                              : <%= p10%>  
                            </td>
                        </tr>
                         <tr>
                            <td>
                              
                            </td>
                            <td>
                           : <%= p11%>
                            </td>
                        </tr>
                         <tr>
                            <td>
                            
                            </td>
                            <td>
                            : <%= p12%>
                            </td>
                        </tr>
                         
                         <tr>
                            <td>
                             
                            </td>
                            <td>
                            : <%= p14%>
                            </td>
                        </tr>
                         <tr>
                            <td>
                            
                            <td>
                           : <%= p15%>
                            </td>
                            
                            <tr>
                            <td>
                           Professional Qualifications  
                            </td>
                            <td>
                           : <%=  p13%>
                            </td>
                        </tr>
                            
                        </tr>
                         <tr>
                            <td>
                          Other Buddhist Exams 
                            </td>
                            <td>
                           : <%= p16%>
                            </td>
                        </tr>
                                
                    </table>
                  
            </div>
             </div>
            <div id="footer">
                <!-- outer file -->
            </div>
        </div>
    </body>
</html>

  




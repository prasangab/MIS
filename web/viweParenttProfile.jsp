<%-- 
    Document   : viweParenttProfile
    Created on : Sep 20, 2014, 11:37:02 AM
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
                $("#header").load("UI_Parts/prn_header.jsp");
                $("#nav").load("UI_Parts/nav.jsp");
                $("#footer").load("UI_Parts/footer.jsp");
                $("#wrap").load("UI_Parts/prn_menu.jsp");
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
            String p19 = (String) request.getAttribute("p19");
            String p20 = (String) request.getAttribute("p20");
            
            
                
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
                              Guardian ID   
                            </td>
                            <td>
                              : <%=p1%>  
                            </td>
                        </tr>
                         <tr>
                            <td>
                              Relation 
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
                             State 
                            <td>
                              : <%= p4%> 
                            </td> 
                            
                        </tr>
                         <tr>
                            <td>
                                Full Name 
                            </td>
                            <td>
                              : <%= p5%>    
                            </td>
                        </tr>
                         <tr>
                            <td>
                              Name With Initials 
                            </td>
                            <td>
                             : <%= p6%>    
                            </td>
                        </tr>
                         <tr>
                            <td>
                              Birthday
                              </td>
                            <td>
                           : <%=  p7%>
                            </td>
                            
                        </tr>
                         <tr>
                            <td>
                              Race
                            </td>
                            <td>
                             : <%= p8%>   
                            </td>
                        </tr>
                         <tr>
                            <td>
                              Religion  
                            </td>
                            <td>
                              : <%= p9%>    
                            </td>
                        </tr>
                         <tr>
                            <td>
                               NIC Number 
                            </td>
                            <td>
                              : <%= p10%>  
                            </td>
                        </tr>
                         <tr>
                            <td>
                            Home Address  
                            </td>
                            <td>
                           : <%= p11%>
                            </td>
                        </tr>
                         <tr>
                            <td>
                           Land line No 
                            </td>
                            <td>
                            : <%= p12%>
                            </td>
                        </tr>
                         <tr>
                            <td>
                           Mobile NO 1  
                            </td>
                            <td>
                           : <%=  p13%>
                            </td>
                        </tr>
                         <tr>
                            <td>
                            Mobile No 2 
                            </td>
                            <td>
                            : <%= p14%>
                            </td>
                        </tr>
                         <tr>
                            <td>
                           Fax 
                            <td>
                           : <%= p15%>
                            </td>
                            
                        </tr>
                         <tr>
                            <td>
                          Email  
                            </td>
                            <td>
                           : <%= p16%>
                            </td>
                        </tr>
                        
                         <tr>
                            <td>
                           Occupation  
                            </td>
                            <td>
                           : <%=p18%>
                            </td>
                        </tr>
                        
                        <tr>
                            <td>
                           Office Phone No  
                            </td>
                            <td>
                           : <%=p19%>
                            </td>
                        </tr>
                        
                        <tr>
                            <td>
                           Office Address  
                            </td>
                            <td>
                           : <%=p20%>
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

          
  




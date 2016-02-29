<%-- 
    Document   : viwePrefectProfile
    Created on : Sep 21, 2014, 8:46:23 AM
    Author     : Mr.Mic
--%>

<%@page import="java.io.PrintWriter"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
<link rel="stylesheet" type="text/css" href="UI_Parts/mystyle_Aplication.css">
        <!-- jQuery library -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>

        <script>
            $(function () {
                $("#header").load("UI_Parts/tss_header.jsp");
                $("#nav").load("UI_Parts/nav.jsp");
                $("#footer").load("UI_Parts/footer.jsp");
                $("#wrap").load("UI_Parts/tss_menue.jsp");
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
                              Prefect ID   
                            </td>
                            <td>
                              : <%=p1%>  
                            </td>
                        </tr>
                         <tr>
                            <td>
                              Registration Date 
                            </td>
                            <td>
                              : <%= p2%> 
                            </td>
                        </tr>
                         <tr>
                            <td>
                             Student ID 
                            </td>
                            <td>
                             : <%= p3%>  
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

            
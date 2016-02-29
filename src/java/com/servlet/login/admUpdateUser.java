/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.servlet.login;

import com.MIS.lib.PersonIdentifier;
import com.MIS.lib.ProsedeurControls;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Mr.Mic
 */
public class admUpdateUser extends HttpServlet {

     String userid, parameter;
    // ResultSet result;
    //  String p1, p2, p3, p4, p5, p6, p7, p8,p9,p10,p11,p12,p13,p14,p15,p16,p17;
    String userType;
    private String para;
    private ResultSet res;
    private String user2;

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet admUpdateUser</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet admUpdateUser at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        } finally {
            out.close();
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
            HttpSession session = request.getSession();
            String x1 = (String) session.getAttribute("useID");
           userid = request.getParameter("uid");
            
            PersonIdentifier pi = new PersonIdentifier();
            userType = pi.getUserType(userid);
            user2 = pi.getUserType(x1);
            
            
            
            ProsedeurControls pc = new ProsedeurControls();
            para = "('"+userid+"')";
            res = pc.callProc("selectPassword", para);
            
        try {
            if(res.next()){
                
                
            
            if (userType.equals("stu") && ("adm".equals(user2) || "rci".equals(user2) )) {
                request.setAttribute("userid", userid);
                 request.setAttribute("FuntionType","update");
                RequestDispatcher rd = request.getRequestDispatcher("viweStudentProfile");
                rd.forward(request, response);
                
            }else if (userType.equals("prn") && ("adm".equals(user2) || "rci".equals(user2) )) {
                request.setAttribute("userid", userid);
                request.setAttribute("FuntionType","update");
                RequestDispatcher rd = request.getRequestDispatcher("viweParentProfile");
                rd.forward(request, response);
                
            }else if (userType.equals("stf") && ("adm".equals(user2) || "sti".equals(user2) || "rci".equals(user2) )) {
                request.setAttribute("userid", userid);
                 request.setAttribute("FuntionType","update");
                RequestDispatcher rd = request.getRequestDispatcher("viweStaffProfile");
                rd.forward(request, response);
                
            }else if (userType.equals("ops")&& ("adm".equals(user2) || "opi".equals(user2) || "rci".equals(user2))) {
                request.setAttribute("userid", userid);
                 request.setAttribute("FuntionType","update");
                RequestDispatcher rd = request.getRequestDispatcher("viweOldBoyProfile");
                rd.forward(request, response);
                
            }else{
                if("rci".equals(user2)){
                request.setAttribute("massage", "You cant Update this user");
                RequestDispatcher rd = request.getRequestDispatcher("/rciInvalid.jsp");
                rd.forward(request, response);
                }
                else if("adm".equals(user2)){
                request.setAttribute("massage", "You cant Update this user");
                RequestDispatcher rd = request.getRequestDispatcher("/admInValid.jsp");
                rd.forward(request, response);
                }
                else if( "opi".equals(user2)){
                request.setAttribute("massage", "You cant Update this user");
                RequestDispatcher rd = request.getRequestDispatcher("/pbiInValid.jsp");
                rd.forward(request, response);
                }
                else if("sti".equals(user2)){
                request.setAttribute("massage", "You cant Update this user");
                RequestDispatcher rd = request.getRequestDispatcher("/stiInValid.jsp");
                rd.forward(request, response);
                }
                
            }
             }else{
            
              if("rci".equals(user2)){
                request.setAttribute("massage", "User ID is invalid.");
                RequestDispatcher rd = request.getRequestDispatcher("/rciInvalid.jsp");
                rd.forward(request, response);
                }
                else if("adm".equals(user2)){
                request.setAttribute("massage", "User ID is invalid.");
                RequestDispatcher rd = request.getRequestDispatcher("/admInValid.jsp");
                rd.forward(request, response);
                }
                else if( "opi".equals(user2)){
                request.setAttribute("massage", "User ID is invalid.");
                RequestDispatcher rd = request.getRequestDispatcher("/pbiInValid.jsp");
                rd.forward(request, response);
                }
                else if("sti".equals(user2)){
                request.setAttribute("massage", "User ID is invalid.");
                RequestDispatcher rd = request.getRequestDispatcher("/stiInValid.jsp");
                rd.forward(request, response);
                }
            }
        } catch (SQLException ex) {
            Logger.getLogger(adminSearchUser.class.getName()).log(Level.SEVERE, null, ex);
        }
            
           
        
       // processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}

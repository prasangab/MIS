/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.servlet.login;

import com.MIS.lib.PasswordEncoding;
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

/**
 *
 * @author Mr.Mic
 */
public class RCI_resetMemberPassword extends HttpServlet {

    private String uid;
    private String query;
    private ResultSet res;
    private String massage;
    private String para;
    private String newuid;
    private String type;

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
            out.println("<title>Servlet RCI_resetMemberPassword</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet RCI_resetMemberPassword at " + request.getContextPath() + "</h1>");
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
       
            uid = request.getParameter("uid");

            PersonIdentifier pi = new PersonIdentifier();
            type = pi.getUserType(uid);

            if ("adm".equals(type)) {

                request.setAttribute("massage", "You can't change admin password");
                RequestDispatcher rd = request.getRequestDispatcher("/rciInvalid.jsp");
                rd.forward(request, response);
            } else {
                try {
                    ProsedeurControls pc = new ProsedeurControls();
                    PasswordEncoding pe = new PasswordEncoding();
                    
                    query = "('" + uid + "')";
                    res = pc.callProc("selectPassword", query);
                    
                    if (res.next()) {
                        
                        try {
                            newuid = pe.Encode(uid);
                            para = "('" + uid + "','" + newuid + "')";
                            res = pc.callProc("updatePassword", para);
                            
                            RequestDispatcher rd = request.getRequestDispatcher("/rciHome.jsp");
                            rd.forward(request, response);
                        } catch (Exception ex) {
                            Logger.getLogger(AdmResetMemberPassword.class.getName()).log(Level.SEVERE, null, ex);
                        }
                        
                    } else {
                        
                        request.setAttribute("massage", "There is not any User with user ID");
                        RequestDispatcher rd = request.getRequestDispatcher("/rciInvalid.jsp");
                        rd.forward(request, response);
                    }   } catch (SQLException ex) {
                    Logger.getLogger(RCI_resetMemberPassword.class.getName()).log(Level.SEVERE, null, ex);
                }
      
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

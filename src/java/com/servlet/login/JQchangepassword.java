/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.servlet.login;

import com.MIS.lib.PasswordEncoding;
import com.MIS.lib.ProsedeurControls;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Mr.Mic
 */
public class JQchangepassword extends HttpServlet {
    private String newpw1;
    private String newpw2;
    private String result;
    private String oldpw;
    private String ID;
    private String para;
    private ResultSet res;
    private String PW;

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
            out.println("<title>Servlet JQchangepassword</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet JQchangepassword at " + request.getContextPath() + "</h1>");
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
        try {
            oldpw=(String)request.getParameter("oldpw");
            
            PasswordEncoding pe = new PasswordEncoding();
            try {
                PW = pe.Encode(oldpw);
            } catch (Exception ex) {
                Logger.getLogger(JQchangepassword.class.getName()).log(Level.SEVERE, null, ex);
            }
            
            HttpSession session = request.getSession(true);
            ID = (String) session.getAttribute("useID");
            
            para ="('"+ID+"','"+PW+"')";
            
            ProsedeurControls ps = new ProsedeurControls();
            res = ps.callProc("logginChek", para);
            
            if(res.next()){
                result="Old password is match";
            }else{
                result="Password is Wrong";
            }
            response.setContentType("text/Html");
            response.setCharacterEncoding("UTF-8");
            response.getWriter().write(result);
            
            // processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(JQchangepassword.class.getName()).log(Level.SEVERE, null, ex);
        }
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
        processRequest(request, response);
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

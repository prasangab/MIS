/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.servlet.login;

import com.MIS.lib.PersonIdentifier;
import com.MIS.lib.ProsedeurControls;
import com.MIS.lib.SendMailTLS;
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
public class email_staff extends HttpServlet {
    private String Message;
    private String subject;
    private ResultSet rs;
    private String to;
    private HttpSession ses;
    private String responce;

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
            out.println("<title>Servlet email_staff</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet email_staff at " + request.getContextPath() + "</h1>");
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
       // processRequest(request, response);
         SendMailTLS mail = new SendMailTLS();
       
        
        
            // processRequest(request, response);
           
            Message = request.getParameter("massage");
           subject = request.getParameter("subject");

            ProsedeurControls pc = new ProsedeurControls();
            
            
                rs = pc.callProc("selectStaffEmails");
            
            
            Message = Message + "This Email is sent by Siri Vajiragnana Dahampasala.";
            

        try {
            while (rs.next()) {
               to = rs.getString(1);
               mail.SendMail(to, subject, Message);
            }
        } catch (SQLException ex) {
            Logger.getLogger(sms_student.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        
        

        //PrintWriter pr = response.getWriter();
       //  pr.write(to);
       
        ses = request.getSession(true);
        String uid = (String) ses.getAttribute("useID");
       responce = "Mails are send successfully";
       PersonIdentifier pi = new PersonIdentifier();
        String ptype = pi.getUserType(uid);
        if (ptype == "rci") {
            request.setAttribute("massage", responce);
            RequestDispatcher rd = request.getRequestDispatcher("/rciValid.jsp");
            rd.forward(request, response);
        }else if(ptype == "tsi"){
         request.setAttribute("massage", responce);
            RequestDispatcher rd = request.getRequestDispatcher("/tsiValid.jsp");
            rd.forward(request, response);
        }else if(ptype == "adm"){
         request.setAttribute("massage", responce);
            RequestDispatcher rd = request.getRequestDispatcher("/admValid.jsp");
            rd.forward(request, response);
        }else if(ptype == "pbi"){
         request.setAttribute("massage", responce);
            RequestDispatcher rd = request.getRequestDispatcher("/pbiValid.jsp");
            rd.forward(request, response);
        }else if(ptype == "ebi"){
         request.setAttribute("massage", responce);
            RequestDispatcher rd = request.getRequestDispatcher("/ebiValid.jsp");
            rd.forward(request, response);
        }else if(ptype == "opi"){
         request.setAttribute("massage", responce);
            RequestDispatcher rd = request.getRequestDispatcher("/opiValid.jsp");
            rd.forward(request, response);
        }else if(ptype == "sti"){
         request.setAttribute("massage", responce);
            RequestDispatcher rd = request.getRequestDispatcher("/stiValid.jsp");
            rd.forward(request, response);
        }
        
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

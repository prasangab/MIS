/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.servlet.login;

import com.MIS.lib.PasswordEncoding;
import com.MIS.lib.PersonIdentifier;
import com.MIS.lib.ProsedeurControls;
import com.MIS.lib.RandomStringGenerator;
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

/**
 *
 * @author Mr.Mic
 */
public class FogetPassword extends HttpServlet {
ResultSet res;
String uid,bday,type,newpw,email,pw;
    private String massage;
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
            /* out.println("<!DOCTYPE html>");
             out.println("<html>");
             out.println("<head>");
             out.println("<title>Servlet FogetPassword</title>");            
             out.println("</head>");
             out.println("<body>");
             out.println("<h1>Servlet FogetPassword at " + request.getContextPath() + "</h1>");
             out.println("</body>");
             out.println("</html>");*/
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
        
    try {
         uid = request.getParameter("userid");
        bday = request.getParameter("Bday");
        
        
        RandomStringGenerator rsg = new RandomStringGenerator();
        PasswordEncoding pe = new PasswordEncoding();
         pw = rsg.nextSessionId();
         
        try {
            newpw = pe.Encode(pw);
        } catch (Exception ex) {
            Logger.getLogger(FogetPassword.class.getName()).log(Level.SEVERE, null, ex);
        }
         

       PersonIdentifier pi = new PersonIdentifier();
       type = pi.getUserType(uid);

        ProsedeurControls pc = new ProsedeurControls();
        String para = "('"+uid+"','"+bday+"')";
        
        
        if ("adm".equals(type)) {
            res = pc.callProc("chekOUbyBirthday", para);
        } else if ("stu".equals(type)) {
            res = pc.callProc("checkStudentByBday", para);
            
        } else if ("rci".equals(type)) {
            res = pc.callProc("chekOUbyBirthday", para);

        } else if ("stf".equals(type)) {
            res = pc.callProc("checkStaffByBday", para);

        } else if ("ops".equals(type)) {
             res = pc.callProc("selectOldBoyByBirthday", para);

        } else if ("prf".equals(type)) {
             res = pc.callProc("selectPrefectByBday", para);

        } else if ("tss".equals(type)) {
             res = pc.callProc("selectTSSByBday", para);

        } else if ("acc".equals(type)) {
             res = pc.callProc("chekOUbyBirthday", para);

        } else if ("pub".equals(type)) {
             res = pc.callProc("chekOUbyBirthday", para);

        } else if ("pbi".equals(type)) {
             res = pc.callProc("chekOUbyBirthday", para);

        } else if ("tsi".equals(type)) {
             res = pc.callProc("chekOUbyBirthday", para);

        } else if ("ebi".equals(type)) {
             res = pc.callProc("chekOUbyBirthday", para);

        } else if ("prn".equals(type)) {
            res = pc.callProc("checkGardianByBday", para);
            
        } else if ("opi".equals(type)) {
             res = pc.callProc("selectOldBoyByBirthday", para);

        } else {
            request.setAttribute("massage", "There is not any User with user ID");
                RequestDispatcher rd = request.getRequestDispatcher("/Invalid.jsp");
                rd.forward(request, response);

        }
        
        if (!res.next()) {
            request.setAttribute("massage", "Your User ID Or Password is Wrong");
           RequestDispatcher rd = request.getRequestDispatcher("/Invalid.jsp");
           rd.forward(request, response);
            
        } else {
            String para2 = "('"+uid+"','"+newpw+"')";
            pc.callProc("updatePassword", para2);
            
            
            email = res.getString("Email");
            
            
            SendMailTLS smt = new SendMailTLS();
            smt.SendMail(email, "New password for SVMIS", "your new password is = "+pw);
            
            massage ="Go to your email ( " +email +" ) and get your new password.";
            
            request.setAttribute("massage", massage);
            RequestDispatcher rd = request.getRequestDispatcher("/valid.jsp");
            rd.forward(request, response);
            
        }
        
        //processRequest(request, response);
    } catch (SQLException ex) {
        Logger.getLogger(FogetPassword.class.getName()).log(Level.SEVERE, null, ex);
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

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

/**
 *
 * @author Mr.Mic
 */
public class AdmDeleteMember extends HttpServlet {
    private String memberID;
    private String type;
   
    private String para;
    private ResultSet res;

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
          /*  out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet AdmDeleteMember</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet AdmDeleteMember at " + request.getContextPath() + "</h1>");
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
            memberID = request.getParameter("uid");
            PersonIdentifier pi = new PersonIdentifier();
            type = pi.getUserType(memberID);
            ProsedeurControls pc = new ProsedeurControls();
            
            para ="('"+memberID+"')";
            res = pc.callProc("selectPassword", para);
            if(!res.next()){
            request.setAttribute("massage", "There is not any User with user ID");
                RequestDispatcher rd = request.getRequestDispatcher("/Invalid.jsp");
                rd.forward(request, response);
            }else{
            
            
            if ("adm".equals(type)) {
                res = pc.callProc("deleteOperationalUsers", para);
            } else if ("stu".equals(type)) {
                res = pc.callProc("deleteStudent", para);
                
            } else if ("rci".equals(type)) {
                res = pc.callProc("deleteOperationalUsers", para);
                
            } else if ("stf".equals(type)) {
                res = pc.callProc("deleteStaff", para);
                
            } else if ("ops".equals(type)) {
                res = pc.callProc("deleteOB", para);
                
            } else if ("prf".equals(type)) {
                res = pc.callProc("deletePrefect", para);
                
            } else if ("tss".equals(type)) {
                res = pc.callProc("deleteTSS", para);
                
            } else if ("acc".equals(type)) {
                res = pc.callProc("deleteOperationalUsers", para);
                
            } else if ("pub".equals(type)) {
                res = pc.callProc("deleteOperationalUsers", para);
                
            } else if ("pbi".equals(type)) {
                res = pc.callProc("deleteOperationalUsers", para);
                
            } else if ("tsi".equals(type)) {
                res = pc.callProc("deleteOperationalUsers", para);
                
            } else if ("ebi".equals(type)) {
                res = pc.callProc("deleteOperationalUsers", para);
                
            } else if ("prn".equals(type)) {
                res = pc.callProc("deleteGardian", para);
                
            } else if ("opi".equals(type)) {
                res = pc.callProc("selectOldBoyByBirthday", para);
                
            } else {
                

            }
            RequestDispatcher rd = request.getRequestDispatcher("/ProssesSucsses.jsp");
            rd.forward(request, response);
            
            
            }
            //processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(AdmDeleteMember.class.getName()).log(Level.SEVERE, null, ex);
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

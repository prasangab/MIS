/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.servlet.login;

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
public class assign_ob_servis extends HttpServlet {
    private String id;
    private String name;
    private String para;
    private ResultSet rs;
    private String oid;
    private String sid;

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
            out.println("<title>Servlet assign_ob_servis</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet assign_ob_servis at " + request.getContextPath() + "</h1>");
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
       try{
        oid = request.getParameter("oid");
        sid = request.getParameter("sid");
       // discription = request.getParameter("discription");

        ProsedeurControls pc = new ProsedeurControls();
        para = "('" + sid +"')";
        rs = pc.callProc("selectOB_service", para);
        if(!rs.next()){
            request.setAttribute("massage", "Service ID is incorrect");
            RequestDispatcher rd = request.getRequestDispatcher("opiInValid.jsp");
            rd.forward(request, response);
        }else{
        rs=null;
        para = "('" + oid +"')";
        rs =pc.callProc("selectOldBoy", para);
        if(!rs.next()){
            request.setAttribute("massage", "Old pupil ID is incorrect");
            RequestDispatcher rd = request.getRequestDispatcher("opiInValid.jsp");
            rd.forward(request, response);
        }
        
        else{
        rs=null;
        para = "('" + sid + "','" + oid + "')";
        pc.callProc("InsertOB_involvement", para);

       // para = "('" + id + "')";
        rs = pc.callProc("selectOB_involvement", para);

        if (rs.next()) {
            request.setAttribute("massage", "Service is added");
            RequestDispatcher rd = request.getRequestDispatcher("opiValid.jsp");
            rd.forward(request, response);
        } else {
            request.setAttribute("massage", "Service is not added");
            RequestDispatcher rd = request.getRequestDispatcher("opiInValid.jsp");
            rd.forward(request, response);
        }
    }}
       }
    catch (SQLException ex

    
        ) {
            Logger.getLogger(add_ob_servis.class.getName()).log(Level.SEVERE, null, ex);
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

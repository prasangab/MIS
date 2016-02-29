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
public class addProjects extends HttpServlet {
    private String ProjectID;
    private String ProjectName;
    private String Projectreport;
    private String ProjectPPT;
    private String Discription;
    private String para1;
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
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet addProjects</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet addProjects at " + request.getContextPath() + "</h1>");
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
        
         try {
            ProsedeurControls pc = new ProsedeurControls();
           

            ProjectID = request.getParameter("ProjectID");
            ProjectName = request.getParameter("ProjectName");
            Projectreport = request.getParameter("Projectreport");
            ProjectPPT = request.getParameter("ProjectPPT");
            Discription = request.getParameter("Discription");

            para1 = "('" + ProjectID + "')";
            res = pc.callProc("SelectProject", para1);

            if (res.next()) {

                request.setAttribute("massage", "It is exsisting course");
                RequestDispatcher rd = request.getRequestDispatcher("tsiInValid.jsp");
                rd.forward(request, response);

            } else {
                para1 = "('" + ProjectID + "','" + ProjectName + "','" + Projectreport +"','"+ProjectPPT+"','"+Discription+ "')";
                pc.callProc("InsertProject", para1);
                request.setAttribute("massage", "course is added");
                RequestDispatcher rd = request.getRequestDispatcher("tsiValid.jsp");
                rd.forward(request, response);
            }
            // processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(addService.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        //processRequest(request, response);
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

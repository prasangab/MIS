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
public class addServiceForStaff extends HttpServlet {

    private String ServiseID;
    private String StaffID;
    private String Date;
    private String Marks;
    private String Assigned;
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
            out.println("<title>Servlet addServiceForStaff</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet addServiceForStaff at " + request.getContextPath() + "</h1>");
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
            PrintWriter pr = response.getWriter();

            ServiseID = request.getParameter("ServiseID");
            StaffID = request.getParameter("StaffID");
            Date = request.getParameter("Date");
            Marks = request.getParameter("Marks");
            Assigned = request.getParameter("Assigned");

            para1 = "('" + ServiseID + "')";
            res = pc.callProc("SelectServices", para1);
            if (res.next()) {
                para1 = "('" + StaffID + "')";
                res = pc.callProc("selectStaff", para1);
                if (res.next()) {

                    para1 = "('" + ServiseID + "','" + StaffID + "','" + Date + "')";
                    res = pc.callProc("SelectInvolveStaff", para1);

                    if (res.next()) {

                        request.setAttribute("massage", "It is exsisting servise");
                        RequestDispatcher rd = request.getRequestDispatcher("stiInValid.jsp");
                        rd.forward(request, response);

                    } else {
                        para1 = "('" + ServiseID + "','" + StaffID + "','" + Date + "'," + Marks + ",'" + Assigned + "')";
                        pc.callProc("InsertInvolvestaff", para1);
                        request.setAttribute("massage", "servise is added for staff");
                        RequestDispatcher rd = request.getRequestDispatcher("stiValid.jsp");
                        rd.forward(request, response);
                    }
                } else {
                    request.setAttribute("massage", "Invalid staff ID");
                    RequestDispatcher rd = request.getRequestDispatcher("stiInValid.jsp");
                    rd.forward(request, response);
                }

            } else {

                request.setAttribute("massage", "Servise ID is invalid.");
                RequestDispatcher rd = request.getRequestDispatcher("stiInValid.jsp");
                rd.forward(request, response);
            }

            // processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(addService.class.getName()).log(Level.SEVERE, null, ex);
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

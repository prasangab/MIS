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
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Mr.Mic
 */
public class SubmitStudentforTSScourseUpdate extends HttpServlet {

    private String TSSID;
    private String CourseID;
    private String Year;
    private String attendance;
    private String LogMarks;
    private String PracticalMarks;
    private String IsLevelPass;
    private String gotbadge;
    private String gotcertificate;
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
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet SubmitStudentforTSScourseUpdate</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet SubmitStudentforTSScourseUpdate at " + request.getContextPath() + "</h1>");
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
        //processRequest(request, response);
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
        TSSID = request.getParameter("TSSID");
        CourseID = request.getParameter("CourseID");
        Year = request.getParameter("Year");
        attendance = request.getParameter("attendance");
        LogMarks = request.getParameter("LogMarks");
        PracticalMarks = request.getParameter("PracticalMarks");
        IsLevelPass = request.getParameter("IsLevelPass");
        gotbadge = request.getParameter("gotbadge");
        gotcertificate = request.getParameter("gotcertificate");
        
        ProsedeurControls pc = new ProsedeurControls();
        para = "('" + TSSID + "','" + CourseID + "','" + Year + "','" + attendance + "','" + LogMarks + "','" + PracticalMarks + "','" + IsLevelPass+ "','" + gotbadge + "','" + gotcertificate  + "')";
        res = pc.callProc("updateCourseInStudent", para);

        request.setAttribute("massage", "Course is updated");
        RequestDispatcher rd = request.getRequestDispatcher("tsiValid.jsp");
        rd.forward(request, response);

        //  processRequest(request, response);
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

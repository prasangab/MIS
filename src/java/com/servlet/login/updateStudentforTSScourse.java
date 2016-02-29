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
public class updateStudentforTSScourse extends HttpServlet {

    private String TSSID;
    private String CourseID;
    private String Year;
    private String para1;
    private ResultSet res;
    private String attendance;
    private String LogMarks;
    private String PracticalMarks;
    private String IsLevelPass;
    private String gotbadge;
    private String gotcertificate;
    String p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, p12, p13, p14, p15, p16, p17, p18, p19, p20;

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
            out.println("<title>Servlet updateStudentforTSScourse</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet updateStudentforTSScourse at " + request.getContextPath() + "</h1>");
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

            TSSID = request.getParameter("TSSID");
            CourseID = request.getParameter("CourseID");
            Year = request.getParameter("Year");

            para1 = "('" + TSSID + "','" + CourseID + "','" + Year + "')";
            res = pc.callProc("selectFollow", para1);

            if (res.next()) {

                TSSID = res.getString(1);
                CourseID = res.getString(2);
                Year = res.getString(3);
                attendance = res.getString(4);
                LogMarks = res.getString(5);
                PracticalMarks = res.getString(6);
                IsLevelPass = res.getString(7);
                gotbadge = res.getString(8);
                gotcertificate = res.getString(9);
                p1 = res.getString(10);
                p2 = res.getString(11);
                p3 = res.getString(12);
                p4 = res.getString(13);
                p5 = res.getString(14);
                p6 = res.getString(15);
                p7 = res.getString(16);
                p8 = res.getString(17);
                p9 = res.getString(18);
                p10 = res.getString(19);
                p11 = res.getString(20);
                p12 = res.getString(21);
                p13 = res.getString(22);
                p14 = res.getString(23);
                p15 = res.getString(24);
                p16 = res.getString(25);
                p17 = res.getString(26);
                p18 = res.getString(27);
                p19 = res.getString(28);
                p20 = res.getString(29);

                request.setAttribute("TSSID", TSSID);
                request.setAttribute("CourseID", CourseID);
                request.setAttribute("Year", Year);
                request.setAttribute("attendance", attendance);
                request.setAttribute("LogMarks", LogMarks);
                request.setAttribute("PracticalMarks", PracticalMarks);
                request.setAttribute("IsLevelPass", IsLevelPass);
                request.setAttribute("gotbadge", gotbadge);
                request.setAttribute("gotcertificate", gotcertificate);
                request.setAttribute("p1", p1);
                request.setAttribute("p2", p1);
                request.setAttribute("p3", p1);
                request.setAttribute("p4", p1);
                request.setAttribute("p5", p1);
                request.setAttribute("p6", p1);
                request.setAttribute("p7", p1);
                request.setAttribute("p8", p1);
                request.setAttribute("p9", p1);
                request.setAttribute("p10", p1);
                request.setAttribute("p11", p1);
                request.setAttribute("p12", p1);
                request.setAttribute("p13", p1);
                request.setAttribute("p14", p1);
                request.setAttribute("p15", p1);
                request.setAttribute("p16", p1);
                request.setAttribute("p17", p1);
                request.setAttribute("p18", p1);
                request.setAttribute("p19", p1);
                request.setAttribute("p20", p1);
                
                
                RequestDispatcher rd = request.getRequestDispatcher("updateStudentforTSScourse1.jsp");
                rd.forward(request, response);

            } else {
                request.setAttribute("massage", "It is invalid course");
                RequestDispatcher rd = request.getRequestDispatcher("tsiInValid.jsp");
                rd.forward(request, response);

            }
            // processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(addService.class.getName()).log(Level.SEVERE, null, ex);
        }
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

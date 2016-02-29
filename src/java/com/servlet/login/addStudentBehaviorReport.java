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
public class addStudentBehaviorReport extends HttpServlet {

   
    String p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, p12, p13, p14, p15, p16, p17, p18, p19, p20;
    private String para1;
    private ResultSet res;
    private String StudentID;
    private String ParentID;
    private String Year;

    
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
            out.println("<title>Servlet addStudentBehaviorReport</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet addStudentBehaviorReport at " + request.getContextPath() + "</h1>");
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

            StudentID = request.getParameter("StudentID");
            ParentID = request.getParameter("ParentID");
            Year = request.getParameter("Year");
           

            p1 = request.getParameter("q1");
            p2 = request.getParameter("q2");
            p3 = request.getParameter("q3");
            p4 = request.getParameter("q4");
            p5 = request.getParameter("q5");
            p6 = request.getParameter("q6");
            p7 = request.getParameter("q7");
            p8 = request.getParameter("q8");
            p9 = request.getParameter("q9");
            p10 = request.getParameter("q10");
            p11 = request.getParameter("q11");
            p12 = request.getParameter("q12");
            p13 = request.getParameter("q13");
            p14 = request.getParameter("q14");
            p15 = request.getParameter("q15");
            p16 = request.getParameter("q16");
            p17 = request.getParameter("q17");
            p18 = request.getParameter("q18");
            p19 = request.getParameter("q19");
            p20 = request.getParameter("q20");

          

             para1 = "('" + StudentID +"','"+ParentID+"','"+Year+ "')";
             res = pc.callProc("selectUnder", para1);

             if (res.next()) {

             request.setAttribute("massage", "It is exsisting behavior");
             RequestDispatcher rd = request.getRequestDispatcher("Invalid.jsp");
             rd.forward(request, response);

             } else {
             para1 = "('" + StudentID +"','"+ParentID+"','"+Year+"','"+ p1 + "','" + p2 + "','" + p3 + "','" + p4 + "','" + p5 + "','" + p6 + "','" + p7 + "','" + p8 + "','" + p9 + "','" + p10 + "','" + p11 + "','" + p12 + "','" + p13 + "','" + p14 + "','" + p15 + "','" + p16 + "','" + p17 + "','" + p18 + "','" + p19 + "','" + p20 +"')";
             pc.callProc("InsertUnder", para1);
             request.setAttribute("massage", "Behavior is added");
             RequestDispatcher rd = request.getRequestDispatcher("valid.jsp");
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

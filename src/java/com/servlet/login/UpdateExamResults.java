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
public class UpdateExamResults extends HttpServlet {

    private String StuID;
    private String ExamID;
    private String IndexNumber;
    private String Result;
    private String Chance;
    private String Year;
    private String query;
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
            out.println("<title>Servlet UpdateExamResults</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet UpdateExamResults at " + request.getContextPath() + "</h1>");
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
            StuID = request.getParameter("StuID");
            ExamID = request.getParameter("ExamID");
            Year = request.getParameter("Year");
            
            para = "('" + StuID + "','" + ExamID + "','" + Year + "')";
            
            ProsedeurControls pc = new ProsedeurControls();
            res = pc.callProc("selectExamResults", para);
            
            if (res.next()) {
                StuID = res.getString(1);
                ExamID = res.getString(2);
                IndexNumber = res.getString(3);
                Result = res.getString(4);
                Chance = res.getString(5);
                Year = res.getString(6);
                
                
                
                request.setAttribute("StuID", StuID);
                request.setAttribute("ExamID", ExamID);
                request.setAttribute("IndexNumber", IndexNumber);
                request.setAttribute("Result", Result);
                request.setAttribute("Chance", Chance);
                request.setAttribute("Year", Year);
                
                RequestDispatcher rd = request.getRequestDispatcher("UpdateExamResults.jsp");
                rd.forward(request, response);
               
            } else {
                request.setAttribute("massage", "Alredy Inserted!!!");
                RequestDispatcher rd = request.getRequestDispatcher("Invalid.jsp");
                rd.forward(request, response);
            }
            
            //processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(UpdateExamResults.class.getName()).log(Level.SEVERE, null, ex);
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

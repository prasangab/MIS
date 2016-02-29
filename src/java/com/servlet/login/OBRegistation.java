/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.servlet.login;

import com.MIS.lib.PasswordEncoding;
import com.MIS.lib.ProsedeurControls;
import com.mysql.jdbc.Connection;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
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
public class OBRegistation extends HttpServlet {

    String p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, p12, p13, p14, p15, p16;
    Connection con;
    private String passWord;
    private String para;
    private ResultSet res;
    private ResultSet res1;

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
             out.println("<title>Servlet OBRegistation</title>");            
             out.println("</head>");
             out.println("<body>");
             out.println("<h1>Servlet OBRegistation at " + request.getContextPath() + "</h1>");
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

            p1 = request.getParameter("obId");
            p2 = request.getParameter("stuId");
            p3 = request.getParameter("Reg_Date");
            p4 = request.getParameter("occupation");
            p5 = request.getParameter("office_phone");
            p6 = request.getParameter("Office_address");
            p7 = request.getParameter("education1");
            p8 = request.getParameter("education2");
            p9 = request.getParameter("education3");
            p10 = request.getParameter("education4");
            p11 = request.getParameter("education5");
            p12 = request.getParameter("education6");
            p13 = request.getParameter("education10");
            p14 = request.getParameter("education7");
            p15 = request.getParameter("education8");
            p16 = request.getParameter("education9");

            ProsedeurControls pc = new ProsedeurControls();
            para = "('" + p1 + "')";
            res1 = pc.callProc("selectOldBoy", para);

            if (res1.next()) {
                request.setAttribute("massage", "Old pupil is olredy exsist");
                RequestDispatcher rd = request.getRequestDispatcher("/rciInvalid.jsp");
                rd.forward(request, response);
            } else {

                para = "('" + p2 + "')";
                res = pc.callProc("selectStudent", para);
                if (res.next()) {
                    String para1 = "('" + p1 + "','" + p2 + "','" + p3 + "','" + p4 + "','" + p5 + "','" + p6 + "','" + p7 + "','" + p8 + "','" + p9 + "','" + p10 + "','" + p11 + "','" + p12 + "','" + p13 + "','" + p14 + "','" + p15 + "','" + p16 + "')";
                    pc.callProc("InsertOB", para1);

                    PasswordEncoding pe = new PasswordEncoding();
                    passWord = pe.Encode(p1);
                    String para2 = "('" + p1 + "','" + passWord + "')";
                    pc.callProc("insertPW", para2);

                    request.setAttribute("massage", "Old pupil is added to the system.");
                    RequestDispatcher rd = request.getRequestDispatcher("/rciValid.jsp");
                    rd.forward(request, response);
                }
                else{
                 request.setAttribute("massage", "Student ID is not valid");
                RequestDispatcher rd = request.getRequestDispatcher("/rciInvalid.jsp");
                rd.forward(request, response);
                }
            }

            // PrintWriter pr = response.getWriter();
            //pr.write(para1);
            // processRequest(request, response);
        } catch (Exception ex) {
            Logger.getLogger(StaffRegistation.class.getName()).log(Level.SEVERE, null, ex);
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

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.servlet.login;

import com.MIS.lib.PasswordEncoding;
import com.MIS.lib.PersonIdentifier;
import com.MIS.lib.ProsedeurControls;
import com.mysql.jdbc.Connection;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Mr.Mic
 */
@WebServlet(name = "ParentRegistation", urlPatterns = {"/ParentRegistation"})
public class ParentRegistation extends HttpServlet {

    String p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, p12, p13, p14, p15, p16, p17, p18, p19, p20, p21, p22, p23, p24, p25, p26, p27, p28, p29, p30, p31, p32, p33, p34;
    Connection con;
    private String passWord;
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
             out.println("<title>Servlet ParentRegistation</title>");
             out.println("</head>");
             out.println("<body>");
             out.println("<h1>Servlet ParentRegistation at " + request.getContextPath() + "</h1>");
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

            p1 = request.getParameter("Id");
            p2 = request.getParameter("Relation");
            p3 = request.getParameter("Reg_Date");
            p4 = request.getParameter("state");
            p5 = request.getParameter("Full_Name");
            p6 = request.getParameter("Initial_Name");
            p7 = request.getParameter("bDay");
            p8 = request.getParameter("Race");
            p9 = request.getParameter("Religion");
            p10 = request.getParameter("NIC");
            p11 = request.getParameter("Address");
            p12 = request.getParameter("Land_Phone");
            p13 = request.getParameter("Mobile_Phone1");
            p14 = request.getParameter("Mobile_Phone1");
            p15 = request.getParameter("Fax");
            p16 = request.getParameter("email");
            p17 = request.getParameter("occupation");
            p18 = request.getParameter("office_phone");
            p19 = request.getParameter("Office_address");

            ProsedeurControls pc = new ProsedeurControls();
            PersonIdentifier pi = new PersonIdentifier();
            String pid = pi.getUserType(p1);

            if (!"prn".equals(pid)) {
                request.setAttribute("massage", "It is not a parent ID");
                RequestDispatcher rd = request.getRequestDispatcher("/rciInvalid.jsp");
                rd.forward(request, response);
            } else {
                para = "('" + p1 + "')";
                res = pc.callProc("selectGardian", para);
                if (res.next()) {
                    request.setAttribute("massage", "Parent is alredy exsist");
                    RequestDispatcher rd = request.getRequestDispatcher("/rciInvalid.jsp");
                    rd.forward(request, response);
                } else {

                    String para1 = "('" + p1 + "','" + p2 + "','" + p3 + "','" + p4 + "','" + p5 + "','" + p6 + "','" + p7 + "','" + p8 + "','" + p9 + "','" + p10 + "','" + p11 + "','" + p12 + "','" + p13 + "','" + p14 + "','" + p15 + "','" + p16 + "','" + p17 + "','" + p18 + "','" + p19 + "')";
                    pc.callProc("InsertGardian", para1);

                    PasswordEncoding pe = new PasswordEncoding();
                    passWord = pe.Encode(p1);
                    String para2 = "('" + p1 + "','" + passWord + "')";
                    pc.callProc("insertPW", para2);
                    request.setAttribute("massage", "Parent is added to the system.");
                    RequestDispatcher rd = request.getRequestDispatcher("/rciValid.jsp");
                    rd.forward(request, response);

                    // processRequest(request, response);
                }
            }
        } catch (Exception ex) {
            Logger.getLogger(ParentRegistation.class.getName()).log(Level.SEVERE, null, ex);
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

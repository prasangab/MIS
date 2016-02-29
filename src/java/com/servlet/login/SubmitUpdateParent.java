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
public class SubmitUpdateParent extends HttpServlet {

    String userid, parameter;
    ResultSet result;
    String p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, p12, p13, p14, p15, p16, p17, p18, p19;
    private String user2;

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
            out.println("<title>Servlet SubmitUpdateParent</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet SubmitUpdateParent at " + request.getContextPath() + "</h1>");
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
       HttpSession session = request.getSession();
        String x1 = (String) session.getAttribute("useID");
        PersonIdentifier pi = new PersonIdentifier();
        user2 = pi.getUserType(x1);
        
        p1 = request.getParameter("Id");
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
        String para1 = "('" + p1  + "','" + p11 + "','" + p12 + "','" + p13 + "','" + p14 + "','" + p15 + "','" + p16 + "','" + p17 + "','" + p18 + "','" + p19 + "')";
        pc.callProc("updateGardian", para1);

       if("rci".equals(user2)){
                request.setAttribute("massage", "Parent is updated");
                RequestDispatcher rd = request.getRequestDispatcher("/rciValid.jsp");
                rd.forward(request, response);
                }
                else if("adm".equals(user2)){
                request.setAttribute("massage", "Parent is updated");
                RequestDispatcher rd = request.getRequestDispatcher("/admValid.jsp");
                rd.forward(request, response);
                }
                else if( "opi".equals(user2)){
                request.setAttribute("massage", "Parent is updated");
                RequestDispatcher rd = request.getRequestDispatcher("/pbiValid.jsp");
                rd.forward(request, response);
                }
                else if("sti".equals(user2)){
                request.setAttribute("massage", "Parent is updated");
                RequestDispatcher rd = request.getRequestDispatcher("/stiValid.jsp");
                rd.forward(request, response);
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
